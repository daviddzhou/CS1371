function wow
    clc

    global words
    global chars
    global sents
    global word_list
    global word_count
    sents = 0;
    chars = 0;
    words = 0;
    word_list = [];
    word_count = [];
    name = 'Federalist Papers.txt';
    dir = '../text_files/';
    fullName = [dir, name];
    fh = fopen(fullName, 'r');
    if fh < 0
        error('bad file name')
    end
    line = '';
    while ischar(line)
        line = fgetl(fh);
        if ischar(line)
            if ~isempty(line) && line(1) ~= '%'
                process_line(line);
            end
        end
    end
    fprintf('there are %d words in %s\n', words, name)
    fprintf('there are %d characters in %s\n', chars, name)
    fprintf('there are %d sentences in %s\n', sents, name)
    chars_per_syll = 2.44;
    sylls = chars ./ chars_per_syll;
    reading_level = 0.39 .* words ./ sents ...
    		+ 11.8 .* sylls ./ words ...
    		-15.59;
    fprintf('the reading level for %s is %0.2f\n', ...
            name, reading_level)
        [word_list, order] = sort(word_list);
        word_count = word_count(order);
        out = fopen('word_list.txt', 'w');
        for ndx = 1:length(word_list)
            fprintf(out, '%20s:: %4d\n', word_list{ndx}, word_count(ndx));
        end
        fclose(out);
end

function process_line(ln)
    global sents
    delims = [' .,:;?!-()' '0':'9'];
    while ~isempty(ln)
        [word, ln] = strtok(ln, delims);
        if isempty(ln)
            punct = ' ';
        else
            punct = ln(1);
        end
        if any(punct == '.?!')
            sents = sents + 1;
        end
        if ~isempty(word)
            process_word(word)
        end
    end
end

function process_word(wd)
    global words
    global chars
    global word_list
    global word_count
    words = words + 1;
    chars = chars + length(wd);
    wd = lower(wd);
    onit = find(strcmp(word_list,wd));
    if isempty(onit)
        word_list = [word_list, {wd}];
        word_count(length(word_list)) = 1;
    else
        word_count(onit) = word_count(onit) + 1;
    end
end
function wow
    clc

    global words
    global chars
    global sents
    sents = 0;
    chars = 0;
    words = 0;
    name = 'mercy.txt';
    dir = '../HW07/';
    fullName = [dir, name];
    fh = fopen(fullName, 'r');
    if fh < 0
        error('bad file name')
    end
    line = '';
    while ischar(line)
        line = fgetl(fh);
        if ischar(line)
            process_line(line);
        end
    end
%	reading_level = 0.39 .* total_words ./ total_sents ...
%		+ 11.8 .* total_syllables ./ total_words ...
%		-15.59;
    fprintf('there are %d words in %s\n', words, name)
    fprintf('there are %d characters in %s\n', chars, name)
    fprintf('there are %d sentences in %s\n', sents, name)
end

function process_line(ln)
    global sents
    delims = ' ,.?!:;-';
    while ~isempty(ln)
        [word, ln] = strtok(ln, delims);
        if isempty(ln)
            punct = ' ';
        else
            punct = ln(1)
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
    words = words + 1;
    chars = chars + length(wd);
end
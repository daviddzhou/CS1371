function chars_per_syllable
% read all of shakespeare (iambic pentameter)
%  all "working" lines have 10 syllables
    clc
    global words
    global chars
    global sent
    global syllables
    words = 0;
    chars = 0;
    sent = 0;
    syllables = 0;
    d = dir;
    n = {d.name};
    for ndx = 1:length(n)
        name = n{ndx};
        if length(name) > 10 && name(1) == 'S'
            fprintf('processing %s\n', name);
            process_file(name)
        end
    end
end

function process_file(name)
    global words
    global chars
    global sent
    global syllables
    
    OK = false;
    fh = fopen(name, 'r');
    line ='';
    while ischar(line)
        line = fgetl(fh);
        % skip lines until you find SCENE 1
        if OK
            if ischar(line)
               process_line(line);
            end 
        elseif length(line) > 5 ...
                && all('SCENE' == line(1:5))
            OK = true;
        end
    end
    fprintf('words: %d\n', words)
    fprintf('chars: %d\n', chars)
    fprintf('sentences: %d\n', sent)
    fprintf('syllables: %d\n', syllables)
    syllables_per_word = syllables./words;
    characters_per_word = chars./words;
    characters_per_syllable = characters_per_word ./ ...
        syllables_per_word;
    fprintf('syllables/word: %1.4f\n', syllables_per_word)
    fprintf('characters/word: %1.4f\n', characters_per_word)
    fprintf('characters/syllable: %1.4f\n', characters_per_syllable)
end

% extract each word and process it
function process_line(line)
    global syllables
    % skip all empty lines
    % and any line containing a name (all caps word)
    use_this = usable(line);
    if use_this
        while ~isempty(line)
            [word, line] = strtok(line, ' ,.;?!-');
            if isempty(line)
                punct = '';
            else
                punct = line(1);
            end
            if ~isempty(word)
                process_word(word, punct);
            end
        end
        syllables = syllables + 10;
    end
end

function yes = usable(line)
    % line is not usable if
    % starts with Exit or Exeunt
    % contains a word length > 1 with all caps
    OK = length(line) > 2;
    yes = false;
    if OK
        word = strtok(line,' .,-;:?!');
        yes =  ~strcmp(word, 'Exit') ...
            && ~strcmp(word,'Exeunt');
        while yes && ~isempty(line)
            [word line] = strtok(line, ' .,-;:?!');
            yes = ~allCaps(word);
        end
    end
end

function yes = allCaps(word)
    yes = length(word) > 1 ...
        && all(word >='A' & word <= 'Z');
end

function process_word(word, punct)
    global words
    global chars
    global sent
%    global out
    
    words = words + 1;
    chars = chars + length(word);
    if ~isempty(punct)
        doit = any(punct == '.?!');
        if doit
            sent = sent + 1;
        end
    end
end


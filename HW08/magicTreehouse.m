function [ wordVec ] = magicTreehouse(name, first, second)

fh = fopen(name);
wordVec = [0,0];
line = fgetl(fh);
while ischar(line)
    line = line( line == ' ' | (line >= 'a' & line <= 'z') | (line >= 'A' & line <= 'Z'));
    [word, rest] = strtok(line, ' ');
    while ~isempty(word)
        if strcmp(word, first)
            wordVec(1) = wordVec(1) + 1;
        elseif strcmp(word, second)
            wordVec(2) = wordVec(2) + 1;
        end
        [word, rest] = strtok(rest, ' ');
    end
    line = fgetl(fh);
end
fclose(fh);
end


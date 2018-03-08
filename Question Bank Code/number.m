function [ num ] = number(str)
[word rest] = strtok(str)
num = 0
while ~isempty(word)
    if contains(word, 'a')
        if length(word) > 5
           num = num + 1
        end
    end
    [word rest] = strtok(rest)
end
end
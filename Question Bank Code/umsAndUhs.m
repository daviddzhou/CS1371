function [ ums, uhs ] = umsAndUhs(str)

ums = 0
uhs = 0
words = lower(str)
words = (words >= 'a' & words <= 'z')
str(~words) = ' '
[word, rest] = strtok(str)
for i = 1:length(str)
    if strcmp(word, 'um')
        ums = ums + 1;
        [word,rest] = strtok(rest)
    else
        if strcmp(word, 'uh')
            uhs = uhs + 1;
            [word,rest] = strtok(rest)
        else
            [word,rest] = strtok(rest)
        end
    end
    
    
end
end
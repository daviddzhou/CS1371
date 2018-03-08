function [out] = lol(sent)
[~, rest] = strtok(sent)
[~, rest] = strtok(rest)
[num, rest] = strtok(rest)

if num > 5 & num < 105
    if strcmpi(rest, 'stinging') & strcmpi(rest, 'buzzing')
        out = 'It''s Buzz'
    else
        out = 'not buzz'
    end
else
    out = 'not buzz'
end
end
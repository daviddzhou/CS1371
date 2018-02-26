function weaved = strWeave(str1, str2)

if length(str1) == 1 & length(str2) == 1
    weaved = [str1 str2];
else
    first = str1(1);
    second = str2(1);
    str1(1) = [];
    str2(1) = [];
    var = strWeave(str1, str2);
    weaved = [first second var];
end

end

% OR

function out = strWeave2(str1,str2)
if isempty(str1) & isempty(str2)
    out = '';
else
    if length(str1) < length(str2)
        out = [str2(1) strWeave2(str1,str2(2:end))];
    else
        out = [str1(1) strWeave2(str1(2:end),str2)];
    end
end

end
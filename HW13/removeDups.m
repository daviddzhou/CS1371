function out = removeDups(in)
if length(in) == 1
    out = in;
elseif in(1) == in(2)
    out = removeDups(in(2:end));
else
    out = [in(1) removeDups(in(2:end))];
end




end
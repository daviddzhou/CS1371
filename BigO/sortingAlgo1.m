function out = sortingAlgo1(vec)
if length(vec) <= 1
    out = vec;
else
    val = vec(1);
    less = vec(vec<val);
    greater = vec(vec>val);
    val = vec(vec==val);
    out = [sortingAlgo1(less) val sortingAlgo1(greater)];
end
%quick
%vec = [0 9 2 1 5];
%out = mysteryRecursion(vec)

function out = mysteryRecursion(vec)
if length(vec) == 1
    out = vec;
else 
    if vec(1)>vec(2)
        vec(2) = [];
    else
        vec(1) = [];
    end
    out = mysteryRecursion(vec);
end
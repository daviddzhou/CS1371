function sum = recursiveSum(vec)
if length(vec) <= 1
    sum = vec;
else
    sum = vec(1) + recursiveSum(vec(2:end));
end

end
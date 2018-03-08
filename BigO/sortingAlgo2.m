function vec = sortingAlgo2(vec)
for i = 1:length(vec)
    for j = 1:length(vec) - i
        if vec(j) > vec(j + 1)
            temp = vec(j);
            vec(j) = vec(j + 1);
            vec(j + 1) = temp;
        end
    end
end
end
%bubble
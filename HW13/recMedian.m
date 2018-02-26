function out = recMedian(vec)
vec = sort(vec);
if length(vec) == 1
    out = vec;
elseif length(vec) == 2
    out = mean(vec);
else
    vec(1) = [];
    vec(end) = [];
    out = recMedian(vec);
end

end
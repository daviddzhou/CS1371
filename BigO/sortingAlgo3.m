function out = sortingAlgo3(vec)
out = vec(1);
for i = 2:length(vec)
    placed = false;
    for j = 1:length(out)
        if vec(i) < out(j) && ~placed
            out = [out(1:j-1) vec(i) out(j:end)];
            placed = true;
        end
    end
    if ~placed
        out = [out vec(i)];
    end
end
end
%insertion
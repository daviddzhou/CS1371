%merge
function out = sortingAlgo4(vec)
if length(vec) <= 1
    out = vec;
else
    first = vec(1:floor(length(vec)/2));
    second = vec(floor(length(vec)/2)+1:end);
    out = helper(sortingAlgo4(first), sortingAlgo4(second));
end
end

function out = helper(first, second)
if isempty(first)
    out = second;
elseif isempty(second)
    out = first;
else
    if first(1) < second(1)
        out = [first(1) helper(first(2:end), second)];
    else
        out = [second(1) helper(first, second(2:end))];
    end
end
end
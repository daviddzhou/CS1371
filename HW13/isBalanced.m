function log = isBalanced(str) 
if isBalanced_helper(str) == 0
    log = true;
else 
    log = false;
end

end

function count = isBalanced_helper(str)
if isempty(str)
    count = 0;
else
    if str(1) == '('
        count = 1 + isBalanced_helper(str(2:end));
    elseif str(1) == ')'
        count = -1 + isBalanced_helper(str(2:end));
    else
        count = 0 + isBalanced_helper(str(2:end));
    end
end
end
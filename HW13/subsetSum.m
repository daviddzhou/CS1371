function [bool, subset] = subsetSum(vec, targ)
if targ == 0
    bool = true;
    subset = [];
elseif isempty(vec)
    bool = false;
    subset = [];
else
    [test, test_vec] = subsetSum(vec(2:end), targ - vec(1)); % try the first number
    if test
        bool = true;
        subset = [vec(1), test_vec];
    else
        [test, test_vec] = subsetSum(vec(2:end), targ); % try without the first number
        if test
            bool = true;
            subset = test_vec;
        else
            bool = false;
            subset = [];
        end
    end
end
end
%%%
% File: Lect_14_for_loops.m
%%%
%   ADMIN
%       Test Wed
%       Reference sheet attached to the test
%
%%%
%   CONCEPT:
%
%   - repeating a code block
%
%%%
%   IMPLEMENTATION
%
%   for loops
%       - repeat a code block a fixed number of times
%       - break statement
%       - implemented by directly accessing a vector
%       - normally implemented by indexing a vector
%           - allows you to change the values in the vector
%       - use only when there is no way to use vector operations
%   EXAMPLES
%       displaying the values of a vector
%
function fred
    clc
    N = 127;
    vec = [round(rand(1,N).*100) 96 99]
    % for value = vec
    for ndx = 1:length(vec)
        % code body
        value = vec(ndx);
        th = get_th(ndx);
        fprintf('the %d%s value is %d\n', ndx, th, value)
    %     if value == 96
    %         break
    %     end
    end
end
%%%

function str = get_th(n)
    str = 'th';
    ones = mod(n, 10);
    tens = mod((n - ones) / 10, 10);
    if tens ~= 1
        switch ones
            case 1
                str = 'st';
            case 2
                str = 'nd';
            case 3
                str = 'rd';
        end
    end
end
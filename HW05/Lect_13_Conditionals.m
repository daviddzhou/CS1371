%%%
% File: Lect_13_Conditionals.m
%%%
%   ADMIN
%       Test next Wed
%
%%%
%   CONCEPT
%   - Code Block [instructions between blue words]
%   - Conditional Execution
%   -- deciding whether or not to run a code block
%
%%%
%   IMPLEMENTATION
%
%   -   switch statement
%   -   alternate means of choosing once code block to run
%
month = input('Which month? ');
switch month
    case{9, 4, 6, 11}
        days = 30;
    case 2 
        yes = input('Is this a leap year? (y/n)' , 's');
        yes = upper(yes);
        if isempty(yes) || yes(1) == 'Y'
            days = 29;
        else 
            days = 28;
        end
    case {1 3 5 7 8 10 12}
        days = 31;
    otherwise
        error('Please go back to grade school')
end
fprintf('The %dth month has %d days',month, days)
%   switch <variable>
%       case {<value1(s)>}
%           <code block 1>
%       case {<value2(s)>}
%           <code block 2>
%       case {<value3(s)>}
%           <code block 3>
%           .
%           .
%           .
%       otherwise
%           <catch-all code block>
%   end
%%%
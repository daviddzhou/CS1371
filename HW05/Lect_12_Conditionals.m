%%%
% File: Lect_12_Conditionals.m
%%%
%   ADMIN
%
%   Last Week Tonight meets Tonight 6pm Boggs B9
%     - so if you have that ghastly feeling that
%       you're falling behind ... be there!
%
%   Test next Wednesday
%   - covers any topic in a completed HW
%   - NOT conditionals or iteration
%   - you may use any aspect of MATLAB you want
%     unless the question specifically prohibits it
%   - BUT ... KISS reduces the possibility of being
%                           misunderstood
%
clear
clc
%%%
%   CONCEPT
%   - Code Block [instructions between blue words]
%   - Conditional Execution
%   -- deciding whether or not to run a code block
%
%%%
grade = input('What grade: ');
if grade >= 110
    error(['is ' num2str(grade) ' a typo'])
elseif grade >= 90;
    letter = 'A'
elseif grade >= 80;
    letter = 'B'
elseif grade >= 70;
    letter = 'C'
elseif grade >= 60;
    letter = 'D'
elseif grade >= 0;
    letter = 'F'
else 
    error('you are stupid')
end
fprintf('grade %d earns a %s\n ', grade, letter)

%   IMPLEMENTATION
%
%   today: if statements
%       general form:
%   if <logical expr> 
%           <do if true>
%   elseif <logical expr>
%           <do if true>
%   ...
%   else
%       <do if false>
%   end
%
%   what happens if I give it a vector?
%   Be careful of the ordering of the tests
%   Use the debugger to ensure all cases work properly
                
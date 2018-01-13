%%%
% File: Lect_15_Iteration_while.m
%%%
%   ADMIN
%
%   Test Wednesday
%       bring a pencil
%       blank paper provided
%       back of the test is a reference sheet
%       ask questions
%
%   PRS - final test Friday
%       - you must register your device to have your input processed
%               see the announcement
%
%%%
%   CONCEPT:
%
%   - repeating a code block
%
%%%
%   IMPLEMENTATION
%
%   while loops
%       - repeat a code block a variable number of times
%       - break statement
%
clear
clc
%
%   repeating a number
a = 5;
b = 4;
num = 1;
while num ~= -1
    num = input('Gimme a number: ');
    if num ~= -1
        fprintf('the number is %d\n', num);
    end
end
%   counting words in a string
str = 'now is    the time ' %for something good to happen';
count = 0;
result = '';
while ~isempty(str)
      [token str] = strtok(str, ' '); 
      if ~isempty(token)
          result = [result '/' token];
          count = count + 1;
      end
end
result
% repeating a calculation
OK = true;
while OK
    grade = input('What grade (enter to exit)? ');
    if isempty(grade)
        OK = false;
    else
        oops = false;
        if grade >= 120
            fprintf('is %d a typo?', grade);
            oops = true;
        elseif grade >= 90
            letter = 'A';
        elseif grade >= 80
            letter = 'B';
        elseif grade >= 70
            letter = 'C';
        elseif grade >= 60
            letter = 'D'
        elseif grade >= 0
            letter = 'F';
        else
            fprintf('is %d a typo?\n', grade);
            oops = true;
        end
        if ~oops
            count = count + 1
            fprintf('the grade %d earns a %s\n', grade, letter)
        end
    end
end
fprintf( 'we did %d grades\n', count)

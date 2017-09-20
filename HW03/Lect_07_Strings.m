%%%
% File: Lect_07_Strings.m
%%%
%  ADMIN
%
%   PRS Test
%
% CONCEPT:
%    Strings
%
clear
clc
% IMPLEMENTATION
%    MATLAB strings
%	- Vector of ASCII
%	- Discuss output in command window
%   - upper and lower case
%   - int2str
%   - num2str
%   - str2num
%   - strcmp(a,b)
%   - strcmpi(a,b)
%   - strfind(str, pattern)
%   - fprintf -- to the command window
name = 'pi';
val = pi;
fprintf('the value of >>%s<< is >>%3.3f<<\n', name, val);
%   - sprintf -- to a string
str = sprintf('the value of >>%s<< is >>%3.3f<<\n', name, val);
nstr = 'abc\ndef\nghi\n';
nstl = length(nstr);
st = sprintf(nstr);
stl = length(st);
double(st)
%   - strtok
str = 'it = 42 + 6';
[tk1 rest] = strtok(str, ' ')
[tk2 rest] = strtok(rest, ' ')
[tk3 rest] = strtok(rest, ' ')
n3 = str2num(tk3);
[tk4 rest] = strtok(rest, ' ')
[tk5 rest] = strtok(rest, ' ')
n5 = str2num(tk5);
fprintf('compute %d %s %d and store the result in %s\n', ...
    n3, tk4, n5, tk1)
%   - input(...)
str = input('Waddyawant? ');
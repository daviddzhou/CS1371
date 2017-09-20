
clear 
clc
N = 9;
% vec = 3:N+2
vec = round(100.*rand(1,N))
oddsAt = 1:2:N
evensAt = 2:2:N
%save the odds
saveOdds = vec(oddsAt)
%move evens one place left
vec(evensAt - 1) = vec(evensAt)
%put odds where evens were
vec(oddsAt + 1) = saveOdds

clear 
clc

% strings - human input and output
% casting

str = 'abcdefg'
n = double(str)
vec = 32:90;
strl = char(vec)
vec = 91:127;
str2 = char(vec)
wow = char(double(str) + 2)

%int2str
it = int2str(46589)

%num2str
dis = num2str(pi)

% str2num
n = str2num('3.14159265')

% strcmp(a,b)
a = 'bob'
b = 'janet'
strcmp(a,b)

% strcmpi (a,b)
a = 'the quick brown cat brow on brow!!!!!!!!'
b = 'Bob'
strcmpi(a,b)

% strfind(str,pattern)
vec = strfind(a, 'brow')
lower = vec(1,3) -2;
upper = vec(1,3) +2 + length('brow');
context = a(lower:upper)

% input(...)


% fprintf


% sprintf

%%%
% File: Lect_23_Structures.m
%%%
%
%   CONCEPT
%   - naming data "rows"

%%%
%
%   IMPLEMENTATION
%   - struct
%
%%%
%
%   EXAMPLES
%   - building "manually"
%     - Fred Jones
fred.first = 'Fred';
fred.last = 'Jones';
fred.grad = false;
date.day = 30;
date.month = 'Feb';
date.year = 1987;
fred.birth = date;
%   - copying
%     - Sally Jones
sally = fred;
sally.first = 'Sally';
sally.birth.day = 31
%   - concatenation
%     - Jones family
%   - build using struct
%     - triplets

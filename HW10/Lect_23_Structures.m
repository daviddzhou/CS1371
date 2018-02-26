%%%
% File: Lect_23_Structures.m
%%%
%
%   ADMIN Stuff
%
%   Test 3 Rescheduled
%
%   CONCEPT
%   - naming data "rows"
%
%%%
%
%   IMPLEMENTATION
%   - struct
%
clear
clc
%%%
%
%   EXAMPLES
%   - building "manually"
%     - Fred Jones
fred.first = 'Fred';
fred.last = 'Jones'
fred.grad = false;
date.day = 30;
date.month = 'Feb';
date.year = 1987;
fred.birth = date;
fred.age = 2017 - fred.birth.year;
%   - copying
%     - Sally Jones
sally = fred;
sally.first = 'Sally';
sally.birth.day = 31
out = fopen('output.txt', 'w')
showit(out, 'Fred', fred)
showit(out, 'Sally', sally)
%   - concatenation
%     - Jones family
jones = [fred, sally]
showit(out, 'family', jones)
%   - build using struct
%     - triplets
date.year = date.year + 1;

triplets = struct('last', 'Jones', ...
                  'first', {'Alpha','Beta','Gamma','Delta'}, ...
                  'birth', date, ...
                  'age', 29, ...
                  'grad', [false, false, true, false])
jones = [jones, triplets];
showit(out, 'with triplets', jones)
firsts = {jones.first};
[~, order] = sort(firsts);
jones = jones(order);
showit(out, 'Sorted', jones)
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %                                                %
            %       Cell Arrays!!!! (Kantwon's fave!)        %
            %                                                %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
     
                                    %% What is a cell array
% a "heterogenous" data structure that allows you to contain values of 
% different types in one entity. 

%% Where have we seen cell arrays before?
% switch statements! 

var = 'hi';
switch var 
    case {1,'a',true} % <-- OMG A CELL ARRAY 
        out = 1;
    case {'hey','hi',false} % <-- OMG ANOTHER CELL ARRAY
        out = 2;
    otherwise 
        out = 3;
end



%% What do we like cell arrays?
%1) can have multiple data types in one entity
%2) containing strings in vectors is usually not what you want to do (hard
%to know when one starts and ends


%% Creating cell arrays
% A CELL ARRAY IS JUST AN ARRAY (or vector) OF CELLS

%Using just curly brackets 
ca = {'a',1,true};


%concatenating together cells
ca = [{'a'},{1},{true}];



%nested cell arrays 
ca = {'a',1,{true}};
ca = [{'a'},{1},{{true}}];

ca = {'a',1,{true,'hello'}};
ca = [{'a'},{1},{{true},{'hello'}}];


ca2 = {'a';1;true};
ca3 = {1, true; 'hi','hola'};



%% building a cell array in a loop
%take a vector "vec" and change it to a cell array using a loop
%ex: vec = [3,6,2,1] -> new = {3,6,2,1}
% vec = [3,6,2,1];

vec = [3 6 2 1];
ca = [];
for x = 1:length(vec)
    ca = [ca {vec(x)}]
end

%%another way but doesn't get the Kantwon stamp of approval
vec = [3 6 2 1];
ca = {};
for x = 1:length(vec)
    ca = [ca vec(x)];
end

%% absolutely very very bad and wrong and should never be done
vec = [3 6 2 1];
ca = [];
for x = 1:length(vec)
    ca = {ca {vec(x)}};
end
%this nests stuff and you will get back a 1x2 cell array




%% Indexing Cell Arrays 
% This is the biggest difference when dealing with cell arrays! 

%Difference between () and {}
ca = [{1},{'a'},{true}];
A =  ca(1)% cell {1}
B =  ca{2}% char 'a'
C = ca(2) %cell {'a'}


%% reverse cell array 
ca = [{1},{'a'},{'Kantwon'}];
revCa = ca(end:-1:1)
revCA2 = ca{end:-1:1}


%% take cell array of doubles, change to vector of doubles
ca = {4 5 6};
vec = [];
for x = 1:length(ca)
    vec = [vec ca{x}];
end

%or
ca = {4,2,9,8};
notNew = ca{:}; % just one number
new = [ca{:}]; % vector [4 2 9 8]

ca2 = {'1','hi',[2,3],3,2};
new2 = [ca2{:}]; %does wierd stuff...don't do it if you have diff classes


%index chaining 
ca2 = {'1',  'hi',  [2,3],  {[10,6],'hello'}};
ca2 = [{'1'},{'hi'},{[2,3]},{{[10,6]},{'hello'}}];

A = ca2{2} %'hi' class char
B = ca2(3)%{[2,3]} class cell
C =  ca2{2}(2)%'i' class char
D =  ca2{end}(1)% {[10,6]} class cell
D2 =  ca2{end}{1}%[10,6] class double
E =  % 6 double
F =  %'ello' class char







%% Using functions with cell arrays 
%strcmp 
ca = {'b','c','a'};
log = strcmp(ca,'a');
A = ca(log);
%sort only works on a cell array of all chars
sorted = sort(ca);
%num2cell turns a vector into a cell array
%cell2mat turns the cell into a vector 
cell2mat(ca);
%iscell returns back true if it is a cell, returns false if it isn't a cell



%% Deleting cell arrays 

%exact same way with vectors 

ca = {'hi',1,[2,4]};
ca = [{'hi'},{1},{[2,4]}]

%CORRECT WAY - only way to replace -> everything else will not clear the
%array
ca(2) = [];

%ALL INCORRECT 
ca{2} = []; %cell array is still length 3
ca{2} = {}; %cell array is still length 3
ca(2) = {}; %errors


%% Example 1
%give a 1x1 nested cell array, determine how many times the contents are
%nested
%ex: ca = {{{{{{{'Serena Williams is a goddess'}}}}}}}
%   depth = 7; 
count = 0;
while iscell(ca)
    ca = ca{1}
    count = count + 1
%(1) will 

%% Example 2

%given a cell array with nested cells, determine the depth and position 
%of the cell array that is nested the most
% ex: ca = {'hi',{{{[1,2]}}},{true}}
% maxDepth = 4, position = 2;
allDepths = [];
for n = 1:length(ca)
    currCa = ca{n}
    count = 0
    while iscell(currCa)
        currCa  = currCa{1}
        count = count + 1;
    end
    allDepths = {allDepths count};
end
[maxDepth, pos] = max{allDepths}
end





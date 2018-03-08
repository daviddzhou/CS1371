            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            %                                                %
            %               Efficiency % Sorting             %
            %                                                %
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            
% Up until now, we have only talked about developing an algorithm that
% works. However, in the real world, getting code to work is easy. What is
% difficult is getting code to work and solve the problem QUICKLY at a large
% scale.
% Perhaps so far in the class you have ran one of your programs and it took
%  a little bit of time for it to finish executing. Relatively, the size of
% your data/input is astronomically small compared to what it could be. So
% if you code takes a long time to execute on small data sets, imagine how
% long it would take to execute on HUGE data sets. 

%% Big O Notation 
% Big O is a notation that is used to communicate the worst case efficiency 
% of an algorithm. Often you can think of Big O as a relationship between 
% the size of a input data set vs the time it takes an algorithm to finish
% executing. 

%% Constant Time Operations
% Some operations take the exact same amount of time to execute no matter
% how large a data set is. An example of this is indexing. When you have a
% vector and you say A = vec(3). This takes the same amount of time to
% execute if there are 3 values or 3 million values in the vector. 
% Constant time operations are denoted in Big O notation as: O(1)

%% Polynomial Time Operations 


%% Exponential Time Operations 

%% Factorial Time Operations 
% Traveling salesman problem. 

%% Logarithmic Time Operations

%% EXTRA: P vs. NP
% There exists a realm of problems that simply cannot be solved within
% polynomial time. 
% A video explaning this concept can be found here: 
% https://www.youtube.com/watch?v=YX40hbAHx3s




%% Sorting
% Creating efficient sorting algorithms was a HUGE deal at one point in
% computing history. This is because a lot of the time if something is
% already sorted, it makes your task a lot easier. Therefore, if you have a
% fast sorting algorithm, then you have a faster overall algorithm. 

% For this class you will only need to know 4 sorting algorithms. 
% 1) Bubble Sort
% 2) Insertion Sort
% 3) Merge Sort
% 4) Quick Sort 

% Visualizations of each sorting algorithm can be foudn here:
% http://math.hws.edu/eck/jsdemo/sortlab.html

% Here are the high-level steps of each sorting algorithm: 

%% Bubble Sort
% Starting at the beginning of a vector, check the first two elements. If
% the one of the left is larger than the one on the right, swap them.
% Continue to do this until you reach the end of the vector. Then start at
% the beginning again.


%% Insertion Sort
% This is how humans sort. Take a number, and compare it to all other
% numbers in a new vector and then place it in the appropriate spot. 

%% Merge Sort
% Keep splitting a vector in half until you get down to length 1. Then
% start comparing smaller pieces to one another and place in the correct
% order. 

%% Quick Sort
% Pick a random number in the vector. Everything that is less than that
% number goes in one vector. Everything that is greater than that number
% goes in another vector. Repeat this process for each vector created.
% Combine values from left to right. 


%% Sorting Chart 



%% Graph Theory 

%Data Structures : 
% Stack
% Queue 
% Priority Queue
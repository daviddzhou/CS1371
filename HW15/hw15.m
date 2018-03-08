%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : David Zhou
% T-square ID  : <your t-square ID. Example: gburdell3>
% GT Email     : <your GT email address>
% Homework     : <homework assignment number/original or resubmission>
% Course       : CS1371
% Section      : <Your Section>
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 OR
%                 "I worked on this homework with <give the names of the
%                  people you worked with>, used solutions or partial
%                  solutions provided by <name the people or other
%                  sources>, and referred to <cite any texts, web sites, or
%                  other materials not provided as course materials for CS
%                  1371.>"
%
% Files to submit:
%	dragRace.m
%	harmony.m
%	hw15.m
%	microscope.m
%	recipe.m
%	snekingZoo.m
%	snowflake.m
%	ultimateTicTacToe.m
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name functions exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to T-Square:
%       a) clear
%       b) clc
%       c) solve
%       d) input
%       e) disp
%       f) close all
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW15_DrillProblems.pdf",
% containing instructions for 7 drill problems that cover the
% following topic:
%
%	Extra Credit (Review)
%
% Follow the directions carefully to write code to complete the drill
% problems as described. Make sure file names as well as function headers
% are written exactly as described in the problem text. If your function
% headers are not written as specified, you will recieve an automatic
% zero for that problem.
%
%==========================================================================
%% PART 3. Testing Your Code
%--------------------------------------------------------------------------
%
% You may use the following test cases for each problem to test your code.
% The function call with the test-inputs is shown in the first line of each
% test case, and the correct outputs are displayed in subsequent lines.
%
%% Function Name: recipe
%
% Test Cases:
% recipe('GroceryStore.xlsx', 'applePie.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% recipe('GroceryStore.xlsx', 'SweetPotatoCasserole.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% recipe('GroceryStore.xlsx', 'stuffing.txt')
% 		Output text file(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: dragRace
%
% Setup:
%	load studentRaceCases.mat
%
% Test Cases:
% [out1] = dragRace(stTimes1, stVelocities1, carsST1, 330)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = dragRace(stTimes2, stVelocities2, carsST2, 245)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = dragRace(stTimes3, stVelocities3, carsST3, 397)
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: microscope
%
% Test Cases:
% [out1] = microscope('microscope1.png', 45)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = microscope('microscope2.png', 100)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = microscope('microscope3.png', 30)
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: snowflake
%
% Test Cases:
% snowflake(0)
% 		Output plot(s) should be identical to that produced by solution file
% 
% snowflake(2)
% 		Output plot(s) should be identical to that produced by solution file
% 
% snowflake(7)
% 		Output plot(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: snekingZoo
%
% Setup:
%	load studentZoos.mat
%
% Test Cases:
% [newZoo1] = snekingZoo(zoo1)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [newZoo2] = snekingZoo(zoo2)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [newZoo3] = snekingZoo(zoo3)
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: ultimateTicTacToe
%
% Setup:
%	load uTTT_studentCases.mat
%
% Test Cases:
% [finalBoard1, finalResult1] = ultimateTicTacToe(board1, moves1)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [finalBoard2, finalResult2] = ultimateTicTacToe(board2, moves2)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [finalBoard3, finalResult3] = ultimateTicTacToe(board3, moves3)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [finalBoard4, finalResult4] = ultimateTicTacToe(board4, moves4)
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: harmony
%
% Setup:
%	load noteFrequencies.mat
%
% Test Cases:
% [notes1] = harmony([1,5,1])
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [notes2] = harmony([1,6,4,5,1])
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [notes3] = harmony([1,5,6,2,5,1])
% 		Output variable(s) should be identical to that produced by the solution file
%

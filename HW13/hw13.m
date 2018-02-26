%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : David Zhou
% T-square ID  : dzhou71
% GT Email     : dzhou71@gatech.edu
% Homework     : HW13
% Course       : CS1371
% Section      : CO2
% Collaboration: 
%                 "I worked on this homework with NaN, used solutions or partial
%                  solutions provided by NaN, and referred to https://www2.warwick.ac.uk/fac/sci/physics/research/condensedmatt/imr_cdt/students/david_goodwin/teaching/cis008-2/determinant_algorithm_cis008-2_lec_21.pdf"
%
% Files to submit:
%	ABCs_recursion.m
%	cheerfulDigits.m
%	collatz.m
%	determinant.m
%	hw13.m
%	luigisMansion.m
%	mobyDick.m
%	r_nFib.m
%	recursiveSum.m
%	towersOfHaynoi.m
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
%% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is an m-file called "ABCs_recursion.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_recursion.m

%
% ABCs File Testing:
%	ABCs_hw13_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW13_DrillProblems.pdf",
% containing instructions for 8 drill problems that cover the
% following topic:
%
%	Recursion
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
%% Function Name: recursiveSum
%
% Test Cases:
% [sum1] = recursiveSum([4,17,9,5])
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [sum2] = recursiveSum([-5,0,9,4,13])
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [sum3] = recursiveSum([3,-4,-8,-12,6,4])
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: cheerfulDigits
%
% Test Cases:
% [out1] = cheerfulDigits(7)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = cheerfulDigits(40)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = cheerfulDigits(129)
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: r_nFib
%
% Test Cases:
% [seq1] = r_nFib(4, 10)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [seq2] = r_nFib(0, 6)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [seq3] = r_nFib(400, 1)
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: collatz
%
% Test Cases:
% [out1, steps1] = collatz(1)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out2, steps2] = collatz(54789)
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out3, steps3] = collatz(10)
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: determinant
%
% Test Cases:
% [out1] = determinant([1 8; 9 2])
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = determinant([1 8 4; 5 1 7; 2 9 6])
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out1] = determinant([1 1 1 1 1; 2 2 2 2 2; 3 3 3 3 3; 4 4 4 4 4; 5 5 5 5 5])
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: luigisMansion
%
% Setup:
%	load studentCases.mat
%
% Test Cases:
% [out1] = luigisMansion(mansion1, [1,1])
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out2] = luigisMansion(mansion2, [1,3])
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [out3] = luigisMansion(mansion3, [2,2])
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: mobyDick
%
% Test Cases:
% [shelf1] = mobyDick('w.txt')
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [shelf2] = mobyDick('s.txt')
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [shelf3] = mobyDick('j.txt')
% 		Output variable(s) should be identical to that produced by the solution file
% 
% [shelf4] = mobyDick('f.txt')
% 		Output variable(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: towersOfHaynoi
%
% Test Cases:
% towersOfHaynoi(3, 'A', 'B', 'C')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% towersOfHaynoi(5, 'C', 'A', 'B')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% towersOfHaynoi(4, 'Truck 1', 'Truck 2', 'Truck 3')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% towersOfHaynoi(9, '1', '3', '2')
% 		Output text file(s) should be identical to that produced by the solution file
%

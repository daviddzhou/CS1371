%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : David Zhou
% T-square ID  : dzhou71
% GT Email     : dzhou71@gatech.edu
% Homework     : HW03
% Course       : CS1371
% Section      : CO2
% Collaboration: 
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%
% Files to submit:
%	ABCs_strings.m
%	ABCs_vectors.m
%	braid.m
%	buzzCase.m
%	compAIRContour.m
%	goLong.m
%	hw03.m
%	rebelCipher.m
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
% Part of this homework are m-files called "ABCs_vectors.m" and "ABCs_strings.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_vectors.m
%	ABCs_strings.m
%
% ABCs File Testing:
%	ABCs_hw03_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW03_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Vectors and Strings
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
%% Function Name: goLong
%
% Test Cases:
% [out1] = goLong([100 101 102 103])
% 	out1 => (100.00, 101.00) is 2.83 units from (102.00, 103.00)
% 
% [out2] = goLong([1 2 3 15])
% 	out2 => (1.00, 2.00) is 13.15 units from (3.00, 15.00)
% 
% [out3] = goLong([0.01 0.8 0.9 0.1])
% 	out3 => (0.01, 0.80) is 1.13 units from (0.90, 0.10)
% 
% [out4] = goLong([-11 -13 -15 -14])
% 	out4 => (-11.00, -13.00) is 4.12 units from (-15.00, -14.00)
%
%--------------------------------------------------------------------------------
%% Function Name: buzzCase
%
% Test Cases:
% [out1] = buzzCase('Jarrett Guarantano')
% 	out1 => jarrettZZZZguarantano
% 
% [out2] = buzzCase('Jonathan Kongbo')
% 	out2 => jonathanZZkongbo
% 
% [out3] = buzzCase('Todd Kelly Jr')
% 	out3 => toddZkellyZjr
%
%--------------------------------------------------------------------------------
%% Function Name: rebelCipher
%
% Test Cases:
% [msg1] = rebelCipher('MaytheFORCEbewithYOU', 9)
% 	msg1 => 9VJHCQNOXALNKNFRCQHXD
% 
% [msg2] = rebelCipher('itsaTRAP', -16)
% 	msg2 => 10SDCKDBKZ
% 
% [msg3] = rebelCipher('ToHellwithgeorgia', 37)
% 	msg3 => 11EZSPWWHTESRPZCRTL
% 
% [msg4] = rebelCipher('goJackets', 14)
% 	msg4 => 14UCXOQYSHG
%
%--------------------------------------------------------------------------------
%% Function Name: braid
%
% Test Cases:
% [decoded1] = braid(' eo teou', ' lre vso', 'mbphdl y')
% 	decoded1 => you solved the problem  
% 
% [decoded2] = braid(' gehwl ', 'argt eo', 'io ilht')
% 	decoded2 => to hell with georgia 
% 
% [decoded3] = braid('Iaal e oGrae d loaeie!', 'm miWcfmeg ca hlfnnnr!', ' Rbnrkr oiThnae   ge!!')
% 	decoded3 => !!!!reenigne na fo lleh a dna hceT aigroeG morf kcerW nilbmaR a mI
%
%--------------------------------------------------------------------------------
%% Function Name: compAIRContour
%
% Test Cases:
% [isSame1] = compAIRContour([1, 2, 3], [2, 3, 4])
% 	isSame1 =>    1
% 
% [isSame2] = compAIRContour([-3, 0, -10], [0, 2, 3])
% 	isSame2 =>    0
% 
% [isSame3] = compAIRContour([3, 0, 3], [10, -10, 10])
% 	isSame3 =>    1
% 
% [isSame4] = compAIRContour([3, 0, 0], [10, -10, -10])
% 	isSame4 =>    1
%

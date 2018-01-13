%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : David Zhou
% T-square ID  : dzhou71
% GT Email     : dzhou71@gatech.edu
% Homework     : HW07
% Course       : CS1371
% Section      : CO2
% Collaboration:
%                 "I worked on this homework with Helen Chang, used solutions or partial
%                  solutions provided by NaN, and referred to NaN"
%
% Files to submit:
%	ABCs_iteration.m
%	blackJack.m
%	blackJackHard.m
%	goFish.m
%	hw07.m
%	scrabbleScore.m
%	war.m
%	wordSearch.m
%	wordSearchHard.m
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
% Part of this homework is an m-file called "ABCs_iteration.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_iteration.m

%
% ABCs File Testing:
%	ABCs_hw07_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW07_DrillProblems.pdf",
% containing instructions for 7 drill problems that cover the
% following topic:
%
%	Iteration
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
%% Function Name: scrabbleScore
%
% Test Cases:
% [out1] = scrabbleScore([5 20 23], [5 19 22])
% 	out1 => I am the Scrabble champion!
% 
% [out2] = scrabbleScore([5 5 10 20], [5 5 10 20 19])
% 	out2 => Beginner's luck...
% 
% [out3] = scrabbleScore([9 9 9 9 9 9], [54])
% 	out3 => I challenge you to a rematch!
%
%--------------------------------------------------------------------------------
%% Function Name: war
%
% Test Cases:
% [statement1] = war([11 6 13 4 2 9], [10 5 8 3 12 7])
% 	statement1 => Player 1 defeated player 2 in 22 rounds.
% 
% [statement2] = war([7 10 3 8 12 4], [13 2 6 9 5 11])
% 	statement2 => Player 2 defeated player 1 in 16 rounds.
% 
% [statement3] = war([10 3 7 13 5 6], [9 11 8 2 12 4])
% 	statement3 => Player 2 defeated player 1 in 14 rounds.
%
%--------------------------------------------------------------------------------
%% Function Name: blackJack
%
% Test Cases:
% [out1] = blackJack([5,8], [10,7,11,4,2], 14)
% 	out1 =>    0
% 
% [out2] = blackJack([10,10], [75,6,7,8,74], 17)
% 	out2 =>    1
% 
% [out3] = blackJack([10,4], [2,4,8,10,11], 20)
% 	out3 =>    1
%
%--------------------------------------------------------------------------------
%% Function Name: goFish
%
% Test Cases:
% [win1, scorevec1] = goFish([1 2 2 3], [1 4 3 5], [4 5 6 6])
% 	win1 => Player 1 won!
% 	scorevec1 =>      3     1
% 
% [win2, scorevec2] = goFish([4 5 1 6], [7 2 2 5], [3 7 7 3 6 1 7 4 2 3 6 5 5 1 1 2 4 3 4 5])
% 	win2 => Player 2 won!
% 	scorevec2 =>      1     2
% 
% [win3, scorevec3] = goFish([11 10 13 13 1 12 3], [9 5 6 10 4 7 2], [9 5 3 8 13 8 5 12 4 1 8 12 12 3 9 2 4 11 6 11 10 9 7 6 7 8 6 1 13 2 5 1 3 10 4 7 11 2])
% 	win3 => Player 2 won!
% 	scorevec3 =>     12    13
%
%--------------------------------------------------------------------------------
%% Function Name: wordSearch
%
% Setup:
%	load puzzles.mat
%
% Test Cases:
% [solved1, inds1] = wordSearch(puzzle1, words1)
% 	solved1 =>  
% #bc#ef
% #hi###
% #no#qr
% ####wx
% 	inds1 =>  
%      4     4
%      4     1
%      4     2
%      1     1
% 
% [solved2, inds2] = wordSearch(puzzle2, words2)
% 	solved2 =>  
% buqmxc#pyjygted
% oarqlw#gnprfnur
% mosdmu#ylupjhgd
% owchko#emswaekv
% dordfh#phynahwi
% derbku#k######a
% bnse######oicfo
% nefzhcxsz#tfhao
% mapqqhopt#jgyqd
% bkui#zsud#qfjmv
% gnlv#qzrb#kdzzk
% hmvy#dikokqkxsb
% opgm#iangq#rfyz
% s#######td#ynoe
% jkoooioifp#ujwl
% 	inds2 =>  
%     10    11
%     14     6
%      5     7
%      8    14
%     11    15
%      5    14
%      7     1
% 
% [solved3, inds3] = wordSearch(puzzle3, words3)
% 	solved3 =>  
% j#zp#vqqkd
% p#f#######
% g#xh#bgtnr
% ##cf#pmovc
% ##ac#mwcoo
% ##el######
% #nlq#mimwq
% #ioa#ngkzx
% #lkag#####
% #isqpxzhla
% 	inds3 =>  
%     10     6
%      5     8
%      4     2
%      1    10
%      2     1
%     10     9
%
%--------------------------------------------------------------------------------
%% Function Name: wordSearchHard
%
% Setup:
%	load puzzlesHard.mat
%
% Test Cases:
% [solved1] = wordSearchHard(arr1, list1)
% 	solved1 =>  
% ###
% ###
% ###
% 
% [solved2] = wordSearchHard(arr2, list2)
% 	solved2 =>  
% @@@@@@@@
% @######@
% @ih##sL@
% @NO##sh@
% @@@@@@@@
% 
% [solved3] = wordSearchHard(arr3, list3)
% 	solved3 =>  
% @@@@@@@@@@@@@@@@@@@@@
% @@@@@@@@@@@@@@@@@@@@@
% @@@@@@@@@@@@@@@@@@@@@
% @@@#isNe#B2dbWEod#@@@
% @@@####h#i####ueo#@@@
% @@@#Jsiw#fBDBWeod#@@@
% @@@#hjsjrqssjsjod#@@@
% @@@####sDWBdjqosi#@@@
% @@@######ndjCBdue#@@@
% @@@@@@@@@@@@@@@@@@@@@
% @@@@@@@@@@@@@@@@@@@@@
% @@@@@@@@@@@@@@@@@@@@@
%
%--------------------------------------------------------------------------------
%% Function Name: blackJackHard
%
% Setup:
%	load blackJackHard_testcases.mat
%
% Test Cases:
% [out1, out2] = blackJackHard(risk1, deck1, played1)
% 	out1 =>     19    17    22    13    24
% 	out2 =>      1     2     4
% 
% [out1, out2] = blackJackHard(risk2, deck2, played2)
% 	out1 =>     20    21    21    20    17
% 	out2 =>      1     2     3     4
% 
% [out1, out2] = blackJackHard(risk3, deck3, played3)
% 	out1 =>     19    18    17    20    17
% 	out2 =>      1     2     4
%

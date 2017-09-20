%% Function Name: passwordProtec
%
% Test Cases:
[out1] = passwordProtec('friendOrfoe?')
% 	out1 =>    0
% 
[out1] = passwordProtec('foe')
% 	out1 =>    0
% 
[out1] = passwordProtec('protecM3Friend!!')
% 	out1 =>    1
%
%--------------------------------------------------------------------------------
%% Function Name: suspects
%
% Test Cases:
[mistaken1, positions1] = suspects('HH TA PK ZT ', [true true true false])
% 	mistaken1 => ZT 
% 	positions1 =>      1     2     3
% 
[mistaken2, positions2] = suspects('ND WF RW OT EF HT MA ', [true true false false false false true])
% 	mistaken2 => EF HT OT RW 
% 	positions2 =>      1     2     7
% 
[mistaken3, positions3] = suspects('RI LG YK PH AS AR BT FG AM HB IG JT KG BE MV HG ON PG ', [false true true false true false true true false true true true true false true true true true])
% 	mistaken3 => AR AM BE PH RI 
% 	positions3 =>      2     3     5     7     8    10    11    12    13    15    16    17    18
%
%--------------------------------------------------------------------------------
%% Function Name: lockSMITH
%
% Test Cases:
[combination1] = lockSMITH([17 34 12 13 71 21 61 2], [6 3 -15 4 -7], [true false true false true])
% 	combination1 =>     21    34    61
% 
[combination2] = lockSMITH([39 72 15 93 24 77], [2, 18, 4, -12, 9], [true false true true true])
% 	combination2 =>     72    77    77    15
% 
[combination3] = lockSMITH([61 24 48 43 35 85 49 23 24 11 20], [7 -3 9 3 -5], [false false true false true])
% 	combination3 =>     24    20
%
%--------------------------------------------------------------------------------
%% Function Name: superheroCrisis
%
% Test Cases:
[city1, win1] = superheroCrisis([5,8,10,13,22], [20,10,6,12,2], [35,35,35,35])
% 	city1 => D
% 	win1 =>    0
% 
[city2, win2] = superheroCrisis([10,4,12,32,39], [3,7,10,23,10], [4,52,108])
% 	city2 => N
% 	win2 =>    1
% 
[city3, win3] = superheroCrisis([24,25,1,25,25], [1,15,2,4,6], [17,70,6,30,40])
% 	city3 => W
% 	win3 =>    1
%
%--------------------------------------------------------------------------------
%% Function Name: criminalMinds
%
% Test Cases:
[suspectNumber1] = criminalMinds([true true false true], [true false false true], [true true false true], [true true false true])
% 	suspectNumber1 => Suspect #2 is lying.
% 
[suspectNumber2] = criminalMinds([true false false], [true false true], [true false true], [true false true])
% 	suspectNumber2 => Suspect #1 is lying.
% 
[suspectNumber3] = criminalMinds([false false false false false], [false false false false false], [false false false false false], [false true false false false])
% 	suspectNumber3 => Suspect #4 is lying.
% 
[suspectNumber4] = criminalMinds([true true], [false false], [true true], [true true])
% 	suspectNumber4 => Suspect #2 is lying.
%

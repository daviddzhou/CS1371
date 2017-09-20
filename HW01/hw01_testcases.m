%% Function Name: pythag
%
% Test Cases:
[c1] = pythag(3, 4)
% 	c1 =>      5
% 
[c2] = pythag(5, 5)
% 	c2 =>                       7.07
% 
[c3] = pythag(16, 25)
% 	c3 =>                      29.68
%
%--------------------------------------------------------------------------------
%% Function Name: inscribe
%
% Test Cases:
[area1] = inscribe(3)
% 	area1 =>                       1.93
% 
[area2] = inscribe(5)
% 	area2 =>                       5.37
% 
[area3] = inscribe(15)
% 	area3 =>                      48.29
%
%--------------------------------------------------------------------------------
%% Function Name: compound
%
% Test Cases:
[years1] = compound(100, 50, 0.02, 1)
% 	years1 =>     36
% 
[years2] = compound(1500, 100, 0.05, 4)
% 	years2 =>     55
% 
[years3] = compound(1000000, 1, 0.03, 5)
% 	years3 =>    462
%
%--------------------------------------------------------------------------------
%% Function Name: pizzaParty
%
% Test Cases:
[out1, out2] = pizzaParty(15, 3)
% 	out1 =>      1
% 	out2 =>      9
% 
[out1, out2] = pizzaParty(100, 25)
% 	out1 =>      2
% 	out2 =>      0
% 
[out1, out2] = pizzaParty(1, 2)
% 	out1 =>     16
% 	out2 =>      0
%
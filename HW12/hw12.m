% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Name         : David Zhou
% % T-square ID  : dzhou71
% % GT Email     : dzhou71@gatech.edu
% % Homework     : HW12
% % Course       : CS1371
% % Section      : CO2
% % Collaboration: 
% %                 "I worked on the homework assignment alone, using
% %                  only course materials."
% %                 
% %
% % Files to submit:
% %	
% %	
% %	
% %	
% %	
% %	shatteredScreen.m
% %
% % Instructions:
% %   1) Follow the directions for each problem very carefully or you will
% %   lose points.
% %   2) Make sure you name functions exactly as described in the problems or
% %   you will not receive credit.
% %   3) Read the announcements! Any clarifications and/or updates will be
% %   announced on T-Square. Check the T-Square announcements at least once
% %   a day.
% %   4) You should not use any of the following functions in any file that 
% %   you submit to T-Square:
% %       a) clear
% %       b) clc
% %       c) solve
% %       d) input
% %       e) disp
% %       f) close all
% %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %==========================================================================
% %% PART 1.  ABC Problems
% %--------------------------------------------------------------------------
% %
% % Part of this homework is an m-file called "ABCs_images.m".
% % Open this file in MATLAB and complete it
% % according to the directions contained within. You can test your answers with
% % the test file listed below.
% %
% % Files to Complete: 
% %	ABCs_images.m
% 
% %
% % ABCs File Testing:
% %	ABCs_hw12_pretest.p
% %
% %==========================================================================
% %% PART 2. Drill Problems
% %--------------------------------------------------------------------------
% %
% % Included with this homework is a file entitled "HW12_DrillProblems.pdf",
% % containing instructions for 6 drill problems that cover the
% % following topic:
% %
% %	Images
% %
% % Follow the directions carefully to write code to complete the drill
% % problems as described. Make sure file names as well as function headers
% % are written exactly as described in the problem text. If your function
% % headers are not written as specified, you will recieve an automatic
% % zero for that problem.
% %
% %==========================================================================
% %% PART 3. Testing Your Code
% %--------------------------------------------------------------------------
% %
% % You may use the following test cases for each problem to test your code.
% % The function call with the test-inputs is shown in the first line of each
% % test case, and the correct outputs are displayed in subsequent lines.
% %
% %% Function Name: cartoonize
% %
% % Test Cases:
% cartoonize('friends.png', 50)
% % 		Output image(s) should be identical to that produced by solution file
% % 
% cartoonize('newGirl.png', 75)
% % 		Output image(s) should be identical to that produced by solution file
% % 
% cartoonize('iLoveLucy.png', 100)
% % 		Output image(s) should be identical to that produced by solution file
% %
% %--------------------------------------------------------------------------------
% %% Function Name: popArt
% %
% % Test Cases:
% popArt('buzz.png')
% % 		Output image(s) should be identical to that produced by solution file
% % 
% popArt('petersons.png')
% % 		Output image(s) should be identical to that produced by solution file
% % 
% popArt('yoda.png')
% % 		Output image(s) should be identical to that produced by solution file
% %
% %--------------------------------------------------------------------------------
% %% Function Name: narutoRun
% %
% % Test Cases:
narutoRun('run1.png', 'BinaryBridge.png')
% % 		Output image(s) should be identical to that produced by solution file
% % 
% narutoRun('run2.png', 'Klaus.png')
% % 		Output image(s) should be identical to that produced by solution file
% % 
% narutoRun('run3.png', 'TechGreen.png')
% % 		Output image(s) should be identical to that produced by solution file
% %
% %--------------------------------------------------------------------------------
% %% Function Name: looneyTunes
% %
% % Test Cases:
% looneyTunes('symphonyNo5', 1, 11)
% % 		Output image(s) should be identical to that produced by solution file
% % 
% looneyTunes('LooneyTunes', 3, 7)
% % 		Output image(s) should be identical to that produced by solution file
% % 
% looneyTunes('PeerGyntSuite1', 6, 4)
% % 		Output image(s) should be identical to that produced by solution file
% %
% %--------------------------------------------------------------------------------
% %% Function Name: pokemonSNAP
% %
% % Setup:
% load nationalPokedex.mat
% %
% % Test Cases:
% pokemonSNAP('timessquare_pokemon.png', 'timessquare.png', nationalPokedex)
% % 		Output image(s) should be identical to that produced by solution file
% % 
% pokemonSNAP('GTCampanile_pokemon.png', 'GTCampanile.png', nationalPokedex)
% % 		Output image(s) should be identical to that produced by solution file
% % 
% pokemonSNAP('ceruleanCave_pokemon.png', 'ceruleanCave.png', nationalPokedex)
% % 		Output image(s) should be identical to that produced by solution file
% %
% %--------------------------------------------------------------------------------
% %% Function Name: shatteredScreen
% %
% % Setup:
% %	load screenPieces.mat
% %
% % Test Cases:
% % shatteredScreen(test1, name1)
% % 		Output image(s) should be identical to that produced by solution file
% % 
% % shatteredScreen(test2, name2)
% % 		Output image(s) should be identical to that produced by solution file
% % 
% % shatteredScreen(test3, name3)
% % 		Output image(s) should be identical to that produced by solution file
% %

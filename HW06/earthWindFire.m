function [win] = earthWindFire(player1, player2)

player1 = lower(player1);
player2 = lower(player2);

if strcmp(player1, 'earth')
   if strcmp(player2, 'wind')
       win = 'Player 1 wins!';
   elseif strcmp(player2, 'fire')
       win = 'Player 2 wins!';
   else 
       win = 'It''s a tie!';
   end
elseif strcmp(player1, 'fire') 
   if strcmp(player2, 'earth')
       win = 'Player 1 wins!';
   elseif strcmp(player2, 'wind')
       win = 'Player 2 wins!';
   else 
       win = 'It''s a tie!';
   end
elseif strcmp(player1, 'wind')
   if strcmp(player2, 'fire')
       win = 'Player 1 wins!';
   elseif strcmp(player2, 'earth')
       win = 'Player 2 wins!';
   else 
       win = 'It''s a tie!';
   end
end
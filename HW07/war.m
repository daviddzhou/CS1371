function [ winner ] = war(player1, player2)
rounds = 0;
playing = true;
while ~isempty(player1) & ~isempty(player2)
    playing = true;
    if player1(1) == 13 & player2(1) == 2
        player2 = [player2 player2(1) player1(1)];
        player1(1) = [];
        player2(1)= [];
    elseif player2(1) == 13 & player1(1) == 2
        player1 = [player1 player1(1) player2(1)];
        player1(1) = [];
        player2(1)= [];
    elseif player1(1) > player2(1)
        player1 = [player1 player1(1) player2(1)];
        player1(1) = [];
        player2(1)= [];
    else player2(1) > player1(1)
        player2 = [player2 player2(1) player1(1)];
        player1(1) = [];
        player2(1)= [];
    end
    rounds = rounds + 1;
end

if isempty(player2) 
    playing = false;
    winner = sprintf('Player 1 defeated player 2 in %d rounds.',rounds);
else
    isempty(player1) 
    playing = false;
    winner = sprintf('Player 2 defeated player 1 in %d rounds.',rounds);
end
end
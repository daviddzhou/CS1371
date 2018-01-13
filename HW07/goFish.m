function [ winner, final ] = goFish(hand1, hand2, cards)
points1 = 0;
points2 = 0;

for i = (1:length(hand1))
    if hand1(i) ~= 0
        mask1 = hand1(i) == hand1;
        pos1 = find(mask1);
        if length(pos1) > 1
            for j = (1:2:length(pos1)-1)
                hand1(pos1(j)) = 0;
                hand1(pos1(j+1)) = 0;
                points1 = points1 + 1;
            end
        end
    end
end

zeroMask = hand1 == 0;
hand1(zeroMask) = [];

for i = (1:length(hand2))
    if hand2(i) ~= 0
        mask2 = hand2(i) == hand2;
        pos2 = find(mask2);
        if length(pos2) > 1
            for j = (1:2:length(pos2) - 1)
                hand2(pos2(j)) = 0;
                hand2(pos2(j+1)) = 0;
                points2 = points2 + 1;
            end
        end
    end
end

zeroMask2 = hand2 == 0;
hand2(zeroMask2) = [];


while ~isempty(hand1) & ~isempty(hand2) 
    %now it's player 1's turn
    if any(hand1(1) == hand2)
        hand1Mask = hand1(1) == hand2;
        hand1(1) = [];
        hand2 = hand2(~hand1Mask);
        points1 = points1 + 1;

    else
        hand1 = [hand1(2:end) cards(1) hand1(1)];
        cards(1) = [];
        % checks to see if any new repeats occur when pulling in a new card
        for i = (1:length(hand1))
            if hand1(i) ~= 0
                mask1 = hand1(i) == hand1;
                pos1 = find(mask1);
                if length(pos1) > 1
                    for j = (1:2:length(pos1)-1)
                        hand1(pos1(j)) = 0;
                        hand1(pos1(j+1)) = 0;
                        points1 = points1 + 1;
                    end
                end
            end
        end
        
        zeroMask = hand1 == 0;
        hand1(zeroMask) = [];
        
    end
    %check if any new conditions have been broken
    if isempty(cards) | isempty(hand1) | isempty(hand2)
        break
    end
    %now it's player 2's turn
    if any(hand2(1) == hand1)
        hand2Mask = hand2(1) == hand1;
        hand2(1) = [];
        hand1 = hand1(~hand2Mask);
        points2 = points2 + 1;
    else
        hand2 = [hand2(2:end) cards(1) hand2(1)];
        cards(1) = [];
        for i = (1:length(hand2))
            if hand2(i) ~= 0
                mask2 = hand2(i) == hand2;
                pos2 = find(mask2);
                if length(pos2) > 1
                    for j = (1:2:length(pos2) - 1)
                        hand2(pos2(j)) = 0;
                        hand2(pos2(j+1)) = 0;
                        points2 = points2 + 1;
                    end
                end
            end
        end
        
        zeroMask2 = hand2 == 0;
        hand2(zeroMask2) = [];
    end
end

if points1 > points2
    winner = 'Player 1 won!';
    final = [points1 points2]
elseif points1 < points2
    winner = 'Player 2 won!';
    final = [points1 points2]
else
    winner = 'It''s a tie!';
    final = [points1 points2]
end
end




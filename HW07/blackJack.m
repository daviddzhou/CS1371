function [ win ] = blackJack(hand, cards, value)
totalHand = hand(1) + hand(2);
playing = true;
while  totalHand < 21 & totalHand < value
    playing = true;
    totalHand = totalHand + cards(1);
    if totalHand < 21 & totalHand < value
        totalHand = totalHand + cards(2);
        if totalHand > 21;
            playing = false;
        end
    elseif totalHand < 21 & totalHand < value
        totalHand = totalHand + cards(3);
        if totalHand > 21;
            playing = false;
        end
    else 
        playing = false;
    end
end
if playing == false
    win = false;
else
    win = true;
end
end
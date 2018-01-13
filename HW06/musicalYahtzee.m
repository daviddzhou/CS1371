function [ maxPoints, recommend ] = musicalYahtzee(notes)
%separate all of the notes
[first, rest] = strtok(notes);
[second, rest] = strtok(rest);
[third, rest] = strtok(rest);
[fourth, rest] = strtok(rest);
[fifth, ~] = strtok(rest);

first = vector(first);
second = vector(second);
third = vector(third);
fourth = vector(fourth);
fifth = vector(fifth);

vecNotes = [first second third fourth fifth];
sumVecNotes = first + second + third + fourth + fifth
sortVec = sort(vecNotes)
diffVec = diff(sortVec)

if length(find(diffVec == 0)) == 4
    maxPoints = 50
    recommend = 'HOORAY! MUSICAL YAHTZEE!'
elseif length(find(diffVec == 0)) == 3
    if find(diffVec ~= 0) == 4 | find(diffVec ~= 0) == 1
        maxPoints = sumVecNotes
        recommend = 'I have a 4 of a Kind!'
    elseif sumVecNotes > 25
        maxPoints = sumVecNotes
        recommend = 'I have a 3 of a Kind!'
    else
        maxPoints = 25
        recommend = 'I have a Full House!'
    end
elseif length(find(diffVec == 0)) == 2
    maxPoints = sumVecNotes
    recommend = 'I have a 3 of a Kind!'
elseif length(find(diffVec == 1)) == 4
    maxPoints = 40
    recommend = 'I have a Large Straight!'
elseif length(find(diffVec == 1)) == 3
    maxPoints = 30
    recommend = 'I have a Small Straight!'
else 
    maxPoints = sumVecNotes
    recommend = 'I have a Chance :('
end
end

function [ output ] = vector(notes)
switch lower(notes)
    case'thirty-second'
        output = 1;
    case 'sixteenth'
        output = 2;
    case 'eighth'
        output = 3;
    case 'quarter'
        output = 4;
    case 'half'
        output = 5;
    case 'whole'
        output = 6;
end
end


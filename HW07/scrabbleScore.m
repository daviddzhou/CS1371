function [ outcome ] = scrabbleScore( score, scoreOpp )

initScore = 0;
x = 1;
for indS = 1:length(score)
    initScore = initScore + score(indS(x));
    x + 1;
end

initScoreOpp = 0;
y = 1;
for indSOpp = 1:length(scoreOpp)
    initScoreOpp = initScoreOpp + scoreOpp(indSOpp(y));
    y + 1;
end

if initScore > initScoreOpp
    outcome = 'I am the Scrabble champion!';
elseif initScore < initScoreOpp
    outcome = 'Beginner''s luck...';
else 
    outcome = 'I challenge you to a rematch!';
end
end

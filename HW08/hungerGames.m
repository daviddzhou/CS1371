function [ winner ] = hungerGames(name)
fh = fopen(name, 'r');
lines = fgetl(fh);
%set empty arrays for all of the variables
playerNames = [];
playerScores = [];
winnerName = [];
winnerScore = [];
while ischar(lines)
    [playerName, playerScore] = strtok(lines, ':');
    playerNames = [playerNames; {playerName}];
    playerScore(1) = [];
    currMean = [];
    while ~isempty(playerScore)
        [playerNum, rest] = strtok(playerScore, ',');
        playerScore = rest;
        currMean = [currMean, ' ', playerNum];
    end
    currMean = str2num(currMean);
    finalMean = round(mean(currMean));
    playerScores = [playerScores; finalMean];
    if strcmpi(playerName,'Katniss') | strcmpi(playerName,'Katniss Everdeen') | strcmpi(playerName,'The Girl on Fire')
        winnerName = playerName;
        winner = 'Katniss Everdeen is most favored to win with a never before seen score of 11!';
        lines = -1;
    else
        lines = fgetl(fh);
    end
    if isempty(winnerName)
        [sortArr,indices] = sort(playerScores);
        winnerScore = sortArr(end);
        playerNames = playerNames(indices);
        winnerName = playerNames(end);
        winnerName = cell2mat(winnerName);
        winner = sprintf('%s is most favored to win with a score of %d', winnerName, winnerScore);
    end
end
end

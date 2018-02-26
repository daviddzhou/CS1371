function [ results ] = predator(animals, survive)
numMonths = length(survive);
for i = 1:numMonths
    totalScores = ([animals.SwimmingAbility] + [animals.SurvivalSkill] + [animals.Cuteness] + [animals.Intimidation] + [animals.Wisdom]);
    switch survive{i}
        case 'Meteor Strike'
            first = [animals.Intimidation];
            second = [animals.Cuteness];
            diff = first - second;
            scores = [diff];
            [minScore, minInds] = min(scores);
            if length(minInds) > 1
                [~, minInds] = min(totalScore(minInds));
                animals(minInds) = [];
            else
                animals(minInds) = [];
            end
        case 'Flood'
            first = [animals.SwimmingAbility];
            second = [animals.SurvivalSkill];
            diff = first + second;
            scores = [diff];
            [minScore, minInds] = min(scores);
            if length(minInds) > 1
                [~, minInds] = min(totalScore(minInds));
                animals(minInds) = [];
            else
                animals(minInds) = [];
            end
        case 'Famine'
            predators = [{animals.Predator}];
            species = [{animals.Species}];
            for j = 1:length(predators)
                death = strcmp(species{j},predators);
                animals(death) = [];
            end
        case 'Volcanic Eruption'
            first = [animals.SurvivalSkill];
            meanFirst = mean(first);
            firstMask = first < meanFirst;
            animals(firstMask) = [];
    end
end
if length(animals) > 2
    results = sprintf('%d animals survived %d grueling months.',length(animals),numMonths);
elseif (length(animals)) == 1
    results = sprintf('After %d months of observation, only %s, a %s, survived.',numMonths,animals.Name,animals.Species);
else
    results = sprintf('%d months were too much for the animals, and none of them survived.',numMonths);
end

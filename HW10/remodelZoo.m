function [ remodel ] = remodelZoo(zoo)
[r,c] = size(zoo);
zoo = rmfield(zoo,'ugaRank');
popVec = [];
sumRows = [];
for i = 1:r
    for j = 1:c
        zooSt = calcPopularity(zoo(i,j));
        newZoo(i,j) = zooSt;
        popVec = [popVec newZoo(i,j).popularity];
    end
sumRow = sum(popVec);
sumRows = [sumRows;
            sumRow]
popVec = [];
end
[~, newInds] = sort(sumRows,'descend');
remodel = newZoo(newInds,:);
end
function [ party ] = celery(array)

dip = array(:,2).';
[r,c] = size(array);

for i = 1:r
    rank = array(i,3);
    rank = cell2mat(rank);
    rankMask = rank == 1;
    array(i,2) = dip(rankMask);
end
    
party = array(:,1:2);
end

function [ st ] = animalHotel(cellArr)
[r , c] = size(cellArr);

for j = 1:c
    field = cellArr{1,j};
    for i = 2:r
        st(i - 1).(field) = cellArr{i,j};
    end
end
end
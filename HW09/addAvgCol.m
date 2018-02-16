function addAvgCol(file)
[num txt raw] = xlsread(file)
avgRows = mean(num,2);
newCol = [{'Test Average'};num2cell(avgRows)]
raw = [raw newCol];
xlswrt
end
clear
clc

m = magic(9);
fh = fopen('data.txt','w');
[rows cols] = size(m);
for row = 1:rows
    for col = 1:cols
        fprintf(fh, '%d', m(row, col));
        if col < cols
            fprintf(fh, ',');
        end
    end
    fprintf(fh, '\n');
end

data = csvread('gradeSheet.csv')
function[out1] = spellCheck(charArray)

convNum = double(charArray);

%try to find the number of rows because the cols don't really matter
[rows, ~] = size(convNum);
%then need to transpose the new double array
transposeNum = convNum.';
%find the sum of the columns
colsSum = sum(transposeNum);
rowsSum = sum(convNum);
%test to see if the magicSquare is truly a square
isSquare = all(colsSum == rowsSum);
%check to see if the col/rows are actually true - will output 0 if now
isCorrect = isSquare .* rowsSum(1);
% this is the way to create the array without using diag function
arrayDiag = convNum([1:rows + 1:end]);
sumDiag = sum(arrayDiag);
%you found one column now to find the next column
convNumflip = flip(convNum);
arrayDiagflip = convNumflip([1:rows + 1:end]);
sumDiagflip = sum(arrayDiagflip);
charArray = charArray(:).';
charArraysort = sort(charArray);
charArraysort = diff(charArraysort);
isUnique = all(charArraysort ~= 0);
%now is the time to use all the logicals to find the answer
diagCheck = sumDiag == sumDiagflip;
isCorrect2 = diagCheck .* sumDiagflip;
isSame = isCorrect == isCorrect2;
out1 = all((isSquare == isSame) & isUnique);


end
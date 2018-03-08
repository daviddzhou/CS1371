function [new1] = sortingSquare(houseSort, arrayDim)

[rows cols] = size(houseSort);

newCols = rows - arrayDim + 1
%create the new square of values
array = houseSort(1:arrayDim, newCols: cols);
%the new students have to have a square for their values
newArray = houseSort(:).'
%now we need to find the chunk taken out of the array b/c arrayDim is only
%a single value
convArrayDim = arrayDim .^2;
%put the new Array that we have and try to put it in the
newArray(array) = [];
%fill in the blank areas with -1 as per the question
ghosts = ones(1, convArrayDim) .* -1;
%this is the final array with all the -1 in the right place
finArray = [newArray, ghosts];
%reshape so that you can get the vector from a linear vector to the MxN you
%want
new1 = reshape(finArray, [rows, cols]);

end
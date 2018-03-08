function [out1] = castCharm(arr1, arr2, magicNum)

% creates a logical mask that will help identify spots in arr2
arr1Loc = arr1 == magicNum;
% gives the numbers in arr2 that are in the places found in arr1Loc
arr2Num = arr2(arr1Loc);
%find the sum of the numbers found in arr2Num
arr2NumSum = sum(arr2Num);
% replace the locations of the magicNum in arr1 with the values found in
% arr2NumSum
arr1(arr1Loc) = arr2NumSum;
out1 = arr1;
end
function [out1] = quibbler(searchWord, wordArray)

%find the number of rows and columns of the array
[rows cols] = size(wordArray);

%look for the word in this first iteration by transposing the wordArray
forwardCols = wordArray(:)';
%create a list of # that is the list of searchWord
hashReplace = ones(1, length(searchWord)) .* '#';
%see if you can replace any characters in the array with the hashReplace
firstCase = replace(forwardCols, searchWord, char(hashReplace));

%flip the first array from a left right direction
backwardCols = fliplr(firstCase);
%same concept as the first case - find the string desired in this backward
%array
hashReplace2 = replace(backwardCols, searchWord, char(hashReplace));
%flip the hashReplace2 function because you want to return it back to the
%original form
secondCase = fliplr(hashReplace2);

%start with a new case because you just don't want to deal with confusing
%iterations of the orig array
freshArray = reshape(secondCase, [rows cols]);

%check the rows because we have been just checking for the columns
changeShape = freshArray';
forwardRows = changeShape(:)';
hashReplace3 = replace(forwardRows, searchWord, char(hashReplace));

%do the same thing as the cols
backwardRows = fliplr(hashReplace3);
hashReplace4 = replace(backwardRows, searchWord, char(hashReplace));
thirdCase = fliplr(hashReplace4);

%return the array to it's original form
finalArray = reshape(thirdCase, [rows cols]);
out1 = finalArray';

end
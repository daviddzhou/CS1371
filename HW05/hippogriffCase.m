function [str1] = hippogriffCase(convStr)

%delete the punctuation in the string by checking to see if the ascii
%characters are out of place
convStr = double(convStr)
%this is where you look for all of the valid parameters of the string
convStrreplace = convStr <= 64 & convStr >= 33;
convStrreplace2 = convStr <= 96 & convStr >= 91;
convStrreplace3 = convStr <= 126 & convStr >= 123;
%here you create empty arrays for all the words that you find
convStr(convStrreplace) = [];
convStr(convStrreplace2) = [];
convStr(convStrreplace3) = [];
%turn the string into a lowercase string
convStr = lower(char(convStr));
%find characters that aren't considered spaces
characterSpaces = find(convStr ~= ' ');
%look for spaces of the first letters and add one to find the indicies of
%the first letter
firstSpacesM = [1,diff(characterSpaces) > 1];
firstSpacesL = firstSpacesM ~= 0;
firstSpaces = characterSpaces(firstSpacesL);
%capitalize vector of first letters
convStr(firstSpaces) = upper(convStr(firstSpaces));
%find hippogriff
hippoLocate = max(strfind(convStr, 'hippogriff'));
%look for where the string splits and then paste in the respective words
second = firstSpaces(firstSpaces <= hippoLocate);
first = second(end)
%make the word hippogriff the third case
firstLettersidx = find(firstSpaces == first);
findBeforeidx = firstSpaces(firstLettersidx - 2);
%output
str1 = [convStr(findBeforeidx:end), convStr(1:findBeforeidx-1)]
end 

function [ percent ] = testDifferenceStats_DavidZhou( test1, test2)
%read the files
[num1,txt1,raw1] = xlsread(test1);
[num2,txt2,raw2] = xlsread(test2);
%read the headers
headers = raw1(1,:);
%remove header line so all you have is true raw data (at least imo)
excelVal1 = raw1(2:end,:);
excelVal2 = raw2(2:end,:);
%create variables to find names to make contain func easier
name1 = excelVal1(:,1);
name2 = excelVal2(:,1);

%find the indices of where students who were only in first test are
containInds = ~contains(name1,name2);
%annihilate the students who only stayed for one test
excelVal1(containInds,:) = [];
%find size of excelVal1
[r,c] = size(excelVal1);
%find the list of people who have 0's in test one and remove them
%Prof Kantwon sugg: make sure to index backwards because the size will
%change therefore affecting the way that the loop works
for i = r:-1:1
    indivTests=[excelVal1{i,5:8}];
    if any(indivTests == 0) 
        %remove the people with 0's in the Q1 - Q4 from 1st and 2nd test xl
        name = excelVal1(i,1);
        excelVal1(i,:) = [];
        zeroMask = strcmp(excelVal2(:,1),name);
        excelVal2(zeroMask,:) = [];
    end
end
%now look for each students total test score in each xls file
score1 = cell2mat(excelVal1(:,9));
score2 = cell2mat(excelVal2(:,9));
%now create a mask that looks at both scores(indiv) that are over 90
score1Mask = (score1 >= 90);
score2Mask = (score2 >= 90);
%once you have the logical mask apply it
scoreMask = ((score1Mask == 1) & (score2Mask == 1));
excelVal1(scoreMask,:) = [];
excelVal2(scoreMask,:) = [];
%find the new score vals after removing the people with A's on both tests
score1 = cell2mat(excelVal1(:,9));
score2 = cell2mat(excelVal2(:,9));
%now look for where the differences are greater than 3
diffs = score2-score1;
%now to separate positive and negative test diffs
%positive mask
posMask = diffs>=0;
posInds = find(posMask);
%initialize improv/dec
improvement = [];
decline = [];
for i = 1:length(posInds)
    improvement = [improvement;
        excelVal1(posInds(i),1) excelVal1(posInds(i),3) diffs(posInds(i))];
end
%negative mask
negMask = diffs<0;
negInds = find(negMask);
for i = 1:length(negInds)
    decline = [decline;
        excelVal1(negInds(i),1) excelVal1(negInds(i),3) diffs(negInds(i))];
end
%create the headers for the array
impHeaders = [headers(1) headers(3) 'Improvement'];
decHeaders = [headers(1) headers(3) 'Decline'];
%now that you have main numbers create avg/std for pos
improvAvg = mean([improvement{:,3}]);
improvStd = std([improvement{:,3}]);
%now that you have main numbers create avg/std for neg
decAvg = mean([decline{:,3}]);
decStd = std([decline{:,3}]);
%problem - b/c sizes diff pad avg/std dev for both -> now extraneous found
%better method
impSize = size(improvement);
% impASize = size(improvAvg);
decSize = size(decline);
% decASize = size(decAvg);
% col2PadImp = impSize(2) - impASize(2);
% col2PadDec = decSize(2) - decASize(2);
padding = num2cell(NaN*ones(1, 1));
improvAvg = ['Average' improvAvg padding];
improvStd = ['Standard Deviation' improvStd padding];
decAvg = ['Average' decAvg padding];
decStd = ['Standard Deviation' decStd padding];
%concatenate onto end of improv/dec
improvement = [ impHeaders;
    improvement;
    improvAvg;
    improvStd];
decline = [ decHeaders;
    decline;
    decAvg;
    decStd];
%do some pre work to make sure your new xls files are are prim and proper
xlswrite('Improvements_DavidZhou.xlsx',improvement);
xlswrite('Declines_DavidZhou.xlsx',decline);

%now to create the output variable
numerator = impSize(1);
divisor = (decSize(1) + numerator);
percentNum = round(((numerator/divisor)*100),5);
percent = percentNum

end
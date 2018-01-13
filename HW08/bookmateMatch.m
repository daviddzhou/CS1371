function [ compatible ] = bookmateMatch(first, second)

fh = fopen(first, 'r');
fh2 = fopen(second, 'r');

% this is where we find the names of the two peeps
firstLine = fgetl(fh);
secondLine = fgetl(fh2);
[~ , firstName]  = strtok(firstLine);
firstName = strtrim(firstName);
[~ , secondName] = strtok(secondLine);
secondName = strtrim(secondName);

% this is the section where we calculate the score according to time
firstTime = fgetl(fh);
secondTime = fgetl(fh2);
[~ , firstTime]  = strtok(firstTime, ':');
firstTime = firstTime(2:end);
firstTime = strtrim(firstTime);
[~ , secondTime] = strtok(secondTime, ':');
secondTime = secondTime(2:end);
secondTime = strtrim(secondTime);
timeComp = round((1 - ((timeDiff(firstTime, secondTime)) / 12)) * 20);

%this is the place where we find out how many points they get for matching
%sleep/wake times
fgetl(fh)
fgetl(fh2)
early1 = fgetl(fh);
early2 = fgetl(fh2);
late1 = fgetl(fh);
late2 = fgetl(fh2);
reallyLate1 = fgetl(fh);
reallyLate2 = fgetl(fh2);

% if strcmpi(early1(1), early2(1))
%     sleepComp = 20;
% elseif strcmpi(early1(1), late2(1))
%     sleepComp = 10;
% elseif strcmpi(late1(1), early2(1))
%     sleepComp = 10;
% elseif strcmpi(late1(1), late2(1))
%     sleepComp = 20;
% elseif strcmpi(late1(1), reallyLate2(1))
%     sleepComp = 10;
% elseif strcmpi(reallyLate1(1), late2(1))
%     sleepComp = 10;
% elseif strcmpi(reallyLate1(1), reallyLate2(1))
%     sleepComp = 20;
% elseif strcmpi(early1(1), reallyLate2(1))
%     sleepComp = 0;
% elseif strcmpi(reallyLate1(1), early2(1))
%     sleepComp = 0;
% else 
%     sleepComp = 0;
% end
if early1(1) == 'X' 
    if early2(1) == 'X'
        sleepComp = 20;
    elseif late2(1) == 'X'
        sleepComp = 10;
    else
        sleepComp = 0;
    end
elseif late1(1) == 'X'
    if early2(1) == 'X'
        sleepComp = 10;
    elseif late2(1) == 'X'
        sleepComp = 20;
    elseif reallyLate2(1) == 'X'
        sleepComp = 10;
    else
        sleepComp = 0;
    end  
elseif reallyLate1(1) == 'X'
    if late2(1) == 'X'
        sleepComp = 10;
    elseif reallyLate2(1) == 'X'
        sleepComp = 20;
    else 
        sleepComp = 0;
    end
else
    sleepComp = 0;
end

%now time to get to the bookmate matches
fgetl(fh)
fgetl(fh2)

emptyArr1 = [];
newLine1 = fgetl(fh);
while ischar(newLine1) 
    newLine1 = fgetl(fh);
    emptyArr1 = [emptyArr1 newLine1];
end
emptyArr2 = [];
newLine2 = fgetl(fh2);
while ischar(newLine2) 
    newLine2 = fgetl(fh2);
    emptyArr2 = [emptyArr2 newLine2];
end
emptyArr1 = strtrim(emptyArr1);
emptyArr2 = strtrim(emptyArr2);
%now to see their compatibility score
firstLength = length(emptyArr1);
secondLength = length(emptyArr2);

if firstLength > secondLength
    textComp = round((secondLength/firstLength) * 20);
else
    textComp = round((firstLength/secondLength) * 20);
end

%now to find the final score
finalComp = round(((timeComp + sleepComp + textComp)/60)*100);
%output the final compatibility score in str form
compatible = sprintf('%s and %s have a %d%% bookmate compatibility score.',firstName, secondName, finalComp);

end
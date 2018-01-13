function [late] = wakeMeUp(time, class, transport)

[hourT, minuteT] = strtok(time, ':');
hourT = str2double(hourT);
hourT = hourT * 60;
minuteT = minuteT(2:end);
minuteT = str2double(minuteT);
minuteT = hourT + minuteT;
[hourC, minuteC] = strtok(class, ':');
hourC = str2double(hourC);
hourC = hourC * 60;
minuteC = minuteC(2:end);
minuteC = str2double(minuteC);
minuteC = hourC + minuteC;
 
if (minuteT >= minuteC)
    late = 'You overslept and missed your first class. Better set your alarm next time!';
else
    switch lower(transport)
        case 'skateboarding'
            if (minuteT + 3 > minuteC)
                late = sprintf ('You rush to get to class by %s, but sadly you are still late. Better set your alarm next time!',transport);
            else 
                late =sprintf('You rush and make it to class just in time by %s. Nice!', transport);
            end
        case 'walking'
            if (minuteT + 10 > minuteC)
                late = sprintf ('You rush to get to class by %s, but sadly you are still late. Better set your alarm next time!',transport);
            else 
                late = sprintf('You rush and make it to class just in time by %s. Nice!', transport);
            end
        case 'stinger bus'
            if (minuteT + 15 > minuteC)
                late = sprintf ('You rush to get to class by %s, but sadly you are still late. Better set your alarm next time!',transport);
            else 
                late = sprintf('You rush and make it to class just in time by %s. Nice!', transport);
            end
    end
end

end
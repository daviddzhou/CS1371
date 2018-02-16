function [ unique, num ] = countCelery(name)

fh = fopen(name);
line = fgetl(fh);
unique = {};
num = 0; %this is david being petty
uniqueW = 0;
while ischar(line)
    line = lower(line);
    line = line((line>=97 & line<=122) | line == 32);
    [first, rest] = strtok(line);
    while ~isempty(first)
        if strcmp(first, 'celery')
            num = num + 1;
        end
        
        if ~isempty(find(strcmp(unique, first)))
            [~,wordPos] = find(strcmp(unique, first));
            unique{2,wordPos} = unique{2,wordPos} + 1;     
        else
            uniqueW = uniqueW + 1;
            unique{1,uniqueW} = first; 
            unique{2,uniqueW} = 1;   
        end
        [first, rest] = strtok(rest);
    end
    line = fgetl(fh);
end
%http://counseling.gatech.edu/
[iHaveCripplingDepression, inds] = sort(unique(1, :));
unique = unique(:,inds);

end




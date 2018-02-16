name = in3;
ranking = in4;
[num, txt,raw] = xlsread(name);
complete = raw;
empty = raw;
numMatches=length(raw);
for x = 2:(log2(length(raw))+1) 
    temp = [];
    for i = 1:2:numMatches
        cmpr = strcmp(empty(i), ranking);
        cmpr2 = strcmp(empty(i + 1), ranking);
        rank = find(cmpr);
        rank2 = find(cmpr2);
        if rank < rank2
            temp = [temp;empty(i)]
        else
            temp = [temp;empty(i + 1)]
        end
    end
    numMatches=numMatches./2;
    while length(temp) < length(raw)
        temp = [temp;
                {''}];
    end
    empty = temp;
    complete = [complete empty]
end




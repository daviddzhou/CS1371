function recipe(inventory,recipetxt)
fhw = fopen((sprintf('%s_list.txt',recipetxt(1:end-4))),'w');
[num, text, raw] = xlsread(inventory);
fh = fopen(recipetxt,'r');
%this removes the ingredients line
line = fgetl(fh);
line = fgetl(fh);
%now to get the actual ingredients
while ~contains(line,'Directions:')
    [word,rest] = strtok(line);
    reqNum = word(2:end);
    reqNum = reqNum(('.' < reqNum) & (reqNum < ':'));
    reqNum = str2double(reqNum);
    if contains(rest, 'cup')
        buyAmt = reqNum * 8;
    elseif contains(rest, 'pound')
        buyAmt = reqNum * 16;
    elseif (contains(rest, 'teaspoon')| contains(rest, 'tablespoon'))
        buyAmt = reqNum * 1;
    else
        buyAmt = reqNum;
    end
    if ~ischar(buyAmt)
        buyAmt;
    else
        buyAmt = str2double(buyAmt);
    end
    [word,food] = strtok(rest);
    food = strtrim(food);
    if ~isempty(food)
        food = strtrim(food);
    else
        food = word;
    end
    p = strcmpi(food,raw(:,2));% Compare user input string with entries in the Excel sheet
    rowNum = find(p==1);%Get Row number
    amount = raw{rowNum, 4};
    cost = raw{rowNum,3};
    amount = str2double(amount(('.' < amount) & (amount < ':')));
     amtBuy = ceil(amount/buyAmt);
    if (contains(line,'cup')|contains(line,'pound')|contains(line,'teaspoon')|contains(line,'tablespoon'))
        writeLine = fprintf(fhw,sprintf('Get %d package(s) of %s at $%.2f each.',amtBuy,food, cost));
    else
        writeLine = fprintf(fhw,sprintf('Get %d %s at $%.2f each.',amtBuy,food, cost));
    end
    %this is the line that moves the entire thing on
    line = fgets(fh);
end
fclose(fh)
fclose(fhw)
end
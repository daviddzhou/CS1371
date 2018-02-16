function [ output ] = sellery(name)

[num,txt, raw] = xlsread(name);

headers = raw(1,:);
revHeader = strcmp(headers, 'Revenue');
expHeader = strcmp(headers, 'Expenditure');

revenue = raw(2:end,revHeader);
expend = raw(2:end, expHeader);

revenue = sum(cell2mat(revenue));
expend = sum(cell2mat(expend));

money = revenue - expend;

if money > 0 
    output = sprintf('You made a profit of $%.2f!', abs(money));
else
    output = sprintf('You are $%.2f in debt!', abs(money));
end

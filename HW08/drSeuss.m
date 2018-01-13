function [ rhyme ] = drSeuss(char)

fh = fopen(char, 'r');
first = fgetl(fh);
second = fgetl(fh);
third = fgetl(fh);
firstReverse = first(end:-1:1);
secondReverse = second(end:-1:1);
thirdReverse = third(end:-1:1);
firstR2 = [firstReverse(1) firstReverse(2)];
secondR2 = [secondReverse(1) secondReverse(2)];
thirdR2 = [thirdReverse(1) thirdReverse(2)];

if strcmpi(firstR2, secondR2) 
    rhyme = 'Wow! Line one and two rhyme, reading this will be a great time.';
elseif strcmpi(firstR2, thirdR2)
    rhyme = 'Wow! Line one and three rhyme, reading this will be a great time.';
else
    rhyme = 'In line one, two, or three, rhymes were not meant to be.';
end

end
function out = randomlyChooseStudent(maxRows, maxColumns)
rowNum = round(rand(1)*(maxRows-1)+1);
seatNum = round(rand(1)*(maxColumns-1)+1);
backFront = round(rand(1));
if mod(backFront,2) == 0
    backFront = 'back';
else
    backFront = 'front';
end
leftRight = round(rand(1));
if mod(leftRight,2) == 0
    leftRight = 'left';
else
    leftRight = 'right';
end


out = sprintf('Row %d from the %s, Seat %d from the %s',rowNum,backFront,seatNum,leftRight);




end
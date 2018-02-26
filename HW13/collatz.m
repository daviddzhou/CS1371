function [ number, steps ] = collatz( int )
if int == 1
    number = 1;
    steps = 0;
elseif mod(int,2) == 0 
    [number, steps] = collatz(int/2);
else
    [number,steps] = collatz((3*int) + 1);
end
steps = steps + 1;
end


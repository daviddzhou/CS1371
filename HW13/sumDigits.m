function out = sumDigits(num)
if num == 0
    out = num;
else
    modulus = mod(num, 10);
    remNum = floor(num/10);
    out = modulus + sumDigits(remNum);
end
end
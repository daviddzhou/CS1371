function [ out1 , out2 , out3 ] = sepDigits(n)

out1 = floor(n/100);
out2 = floor((mod(n,100)/10));
out3 = floor(mod(n,10));

end


function [out1] = f ( x )
%creation of function g(x)
expo = (x * abs(x));
%numerator
num = (1.17 * sqrt(1 + x^0.9)) + (sin(x^2 - 4));
%exponent in the denominator
denomexp = (x^2 - expo);
%whole denominator
denom = 1.5 * (exp(1)^denomexp);
%combination of whole function
out1 = round((num/denom),4);
end



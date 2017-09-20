function [ out1 ] = fib(n)
%golden ratio definition
gr = (1 + sqrt(5))/2;
%desired fibonacci through the transformation of the problem into matlab
%code
out1 = round(((gr^n) - ((-gr)^-n))/sqrt(5));
end

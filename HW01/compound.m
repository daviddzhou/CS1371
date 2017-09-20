function [ years ] = compound( A , P , r , n)
% A = future value of investment
% P = initial, principal investment
% r = annual interest rate (decimal)
% n = number of times the interest is compounded per year
% t = number of years the money is invested

years = ceil((((log( A / P ))/ n ))/(log(1 + ( r / n ))));



end

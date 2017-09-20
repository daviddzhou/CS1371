function [ c ] = pythag(a , b)
%c^2 = a^2 + b^2
%Hundreths place rounding = Multiply orig by 100 -> round to nearest
%integer -> then divide by 100 to get hundreths place rounded

c = (round(sqrt(a.^2 + b.^2)* 100))/100;


end
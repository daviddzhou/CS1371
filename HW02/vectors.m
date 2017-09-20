clear
clc


A = 3:2:12
B = round(linspace(8,-5,5))

C = A + B
D = A .* C
%matrix multiplication
E = D([1:2 4:end])
%transpossing
A'
%length function
it = length(D)
%sum 
dis = sum(A)
%prod
dat = prod(B)
%max
G = round(rand(1,5)-0.5) .*100)



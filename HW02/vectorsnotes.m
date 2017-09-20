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
G = round((rand(1,5)-0.5) .*100)
%min
[val, where] = min(G)
%sort
[values, order] = sort(G)
%mod
ooh = mod(G, 3)
%the values at odd indices in a vector
atOddIndex = G(1:2:end)
%counting the odd numbers in a vector
nOddVals = sum(mod(G,2))





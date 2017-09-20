%%%
% File: Lect_10_Arrays.m
%%%
%
%   ADMIN 
%       test in 2 weeks
%       extra help session starts Monday 6pm
%
%       PRS issues - still testing
%
%   CONCEPT
%     -  arrays - two-dimensional vectors
%
clear
clc
%
%%%
%   Constructing
%   Concatenation
A = [1 2 3 4; 5 6 7 8]
B = [1 2 3 4 
     5 6 7 8]
C = [A B]
%adding values to the matrix
B(3,  6) = 99
D = [A
     B(1:end, 1:4)]
%       not : or linspace
%       add magic(...)
%   row/column indexing
%   length gives you the length of the largest dimension / size 
A1 = length(A)
[rows, cols] = size(B)
%   effect on min, max etc.
R = round(rand(3,5).*100)
%   find the min or max in an array
[vals, where] = max(R)
max(max(R))
%   validate magic square
m = magic(7)
m(2,6) = m(2,6) + 100
colSum = sum(m)
rowSum = sum(m')'
majDSum = sum(diag(m))
minDSum = sum(diag(m(end:-1:1, 1:end)))
%   find()
bigs = m >40
find(bigs)
%   slicing arrays
%   stretch limo

car = imread('GrayVolta.jpg');
imshow(car)
[rows, cols] = size(mid);
front = car(:, 1:100)
back = car(:, 160:end)
mid = car(:, 100:160)
scale = 2.5
colNdx = linspace(1, cols, cols .* scale)
imshow(car(:, colNdx))



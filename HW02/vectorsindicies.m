
clear 
clc
N = 9;
vec = 3:N+2
oddsAt = 1:2:N
evensAt = 2:2:N
%save the odds
saveOdds = vec(oddsAt)
%move evens one place left
vec() = vec(evensAt)
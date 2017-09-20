function [ decoded1 ] = braid(string1,string2,string3)

lengthvec = length(string1).*3;

vectorb = [];

vectorb(lengthvec)= 0;

vec1 = 1:3:length(vectorb);

vec2 = 2:3:length(vectorb);

vec3 = 3:3:length(vectorb);

vectorb(vec1) = string1;
vectorb(vec2) = string2;
vectorb(vec3) = string3;


vectorbdec = char(vectorb);
decoded1 = fliplr(vectorbdec);
end
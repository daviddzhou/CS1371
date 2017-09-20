function [ combination1 ] = lockSMITH(pot, rot, logical)
%create an empty vector with 0's to replace
confirmed = zeros(1,5);
%Create variables to contain the rot variables
pot_length = length(pot);
A = mod(rot(1)-1,pot_length)+1;
B = mod(A + rot(2)-1,pot_length)+1;
C = mod(B + rot(3)-1,pot_length)+1;
D = mod(C + rot(4)-1,pot_length)+1;
E = mod(D + rot(5)-1,pot_length)+1;

confirmed = [pot(A), pot(B), pot(C), pot(D), pot(E)];

true_indicies = logical;

combination1 = confirmed(true_indicies);

    
        
        



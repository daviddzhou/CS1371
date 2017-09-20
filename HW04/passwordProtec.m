function [ out1 ] = passwordProtec(password)
password = double(password);
%password greater than 8 characters
plength = length(password) >= 8;
%password contains lowercase
lower = (password >= 97) & (password <= 122);
lowerCase = any(lower);
%password contains uppercase
upper = (password >= 65) & (password <= 90);
upperCase = any(upper);
%password contains numbers
num = (password >= 48) & (password <= 57);
number = any(num);
%password that contains at least 1 special character
A = ~lower & ~upper;
B = A & ~num;
special = any(B);
%logical that contains all trues for above variables
out1 = all([plength lowerCase upperCase number special]);

end
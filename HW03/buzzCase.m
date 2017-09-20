function [ out1 ] = buzzCase(words)
%put all of the string into lowercase letters
lowerwords = lower(words);
%use logical operators to find out where the spaces are
gstr = strfind(lowerwords, 'g');
tstr = strfind(lowerwords, 't');
toreplace = length(gstr) + length(tstr);
stringinput = ones(1, toreplace).*'Z'
out1 = strrep(lowerwords,' ',char(stringinput));

end

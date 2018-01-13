clear
clc

name = 'mercy.txt';
dir = '../HW07/';
fullName = [dir, name];
fh = fopen(fullName, 'r');
if fh < 0
    error('bad file name')
end
% str = '111\n222\n333\n';
% it = sprintf(str)
% daFile = double(it)
% line1 = fgets(fh)
% double(line1)
% line2 = fgetl(fh)
% double(line2)
line = '';
while ischar(line)
    line = fgetl(fh);
    if ischar(line)
        fprintf('%s\n', line);
    end
end
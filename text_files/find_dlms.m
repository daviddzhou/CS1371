clear
clc

fh = fopen('green_eggs_and_ham','r');
line = '';
dlm = '';
while ischar(line)
    line = fgetl(fh);
    if ischar(line)
    for ch = line
        if (ch >= 'a' & ch <= 'z') ...
        | (ch >= 'A' & ch <= 'Z')
        else
            if ~any(dlm == ch)
                dlm = [dlm ch];
            end
        end
    end
    end
end
fprintf('dlm is %s\n', dlm);
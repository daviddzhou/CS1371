function [ decoded ] = nationalCelery(name, declaration)
%https://www.youtube.com/watch?v=R29fbwjEJ08
 fh = fopen(name);
line = fgetl(fh);

decoded = [];

while ischar(line)
    if isequal(line, 'space')
        decoded = [decoded ' '];
        line = fgetl(fh);
    else 
        [row, rest] = strtok(line, '-');
        [col, rest] = strtok(rest, '-');
        [char, ~] = strtok(rest, '-');
        row = str2num(row);
        col = str2num(col);
        char = str2num(char);
        desire = declaration{row, col};
        desire = desire(char);
        decoded = [decoded desire];
        line = fgetl(fh);
    end
end
        


end

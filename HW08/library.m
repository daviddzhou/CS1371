function library(book, lines, times)

[first, rest] = strtok(book);
first = lower(first);
output = sprintf('%s.txt', first);
display = [];
for i = 1:times
    display = [display ' ' book];
end
fh2 = fopen(output, 'w');
for n = 1:lines
    fprintf(fh2, 'Line %d. %s\n',n, display);
end

end
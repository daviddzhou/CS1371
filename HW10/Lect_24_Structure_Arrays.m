function fred
%%%
% File: Lect_24_Structure_Arrays.m
%%%
%   Last week's movie data
%%%
%
%   IMPLEMENTATION
%
%%%
%   PROBLEM SOLVING
clc
out = fopen('output.txt', 'w')

%   - abstracting functionality
%   - composing solutions
%   - fundamental operations
%   -- Build / Insert
mv = make_movies
%   -- Traverse
for movie = mv
    fprintf(out,'%s\n', movie.Title);
end
%   -- Map
for ndx = 1:length(mv)
    mv(ndx).gpt = mv(ndx).Weekend_gross ...
               ./ mv(ndx).Theater_count
end
%   -- filter
%   -- fold
%   -- search
%   -- sort
%
%%%
%   EXAMPLES
%   - extract movie data
%   - problem solving examples
end
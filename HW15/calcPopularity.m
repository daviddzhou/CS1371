%% function [popularity] = calcPopularity(exhibit) 
%   Calculates the popularity of the exhibit and returns it as a double
%
%   Takes in a 1x1 structure and outputs the popularity of that structure.
%   Must contain the fields 'people','time','rating'.
%   
%   EXAMPLE:
%       exhibitIn =  exhibit: 'Harambe'
%                    people: 50000000
%                    time: 24
%                    rating: 6
%
%       popularity = 7200000000
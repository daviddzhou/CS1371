function [ area ] = inscribe(s)
%Area of square = s^2
%Area of a circle = ?r^2

r = s / 2;
area = (round((s.^2 - (pi*(r.^2)))*100))/100;

% squarearea = sidelength.^2;
% 
% radius = sidelength./2;
% circlearea = pi * (radius.^2);
% 
% area = squarearea - circlearea
end
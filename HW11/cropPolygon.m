function cropPolygon(lengths, degrees)

hold on
xValue = 0;
yValue = 0;
degree = 0;
for x = 1:length(lengths)
   degree = degree + degrees(x)
   math = [cosd(degree),-sind(degree);sind(degree),cosd(degree)];
   total = math * [lengths(x);0];
   xPrevious = xValue;
   yPrevious = yValue;
   xValue = total(1,1) + (xPrevious(end));
   yValue = total(2,1) + (yPrevious(end));
   plot([xValue,xPrevious], [yValue, yPrevious],'- k');
end

axis equal

axis off
end
function illuminati(hyp, angle)
%find the length of the opposite
oppLen = hyp .* sind(angle);
%find the y maximum so that you can use it in plot
yMax = oppLen;
%linspace the yMax so that you can find the y values 
yVal = linspace(0,yMax);
%you need to switch the order og the yVals because you are trying to
%correspond them to the indiv x vals
yVal = yVal(end:-1:1);


%find the length of the adjacent
adjLen = hyp .* cosd(angle);
%find the x maximum so that you can use it in plot
xMax = adjLen;
%linspace the xMax so that you can find x values to use
xVal = linspace(0,xMax);

hold on
plot(xVal,yVal,'b')
plot(xVal,zeros(length(xVal)),'b')
plot(zeros(length(yVal)),yVal,'b')

plotEye(hyp,angle)

axis equal
box on

end
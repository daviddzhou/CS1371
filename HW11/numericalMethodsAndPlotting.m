%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                %
%          Numerical Methods and Plotting        %
%                                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% What is numerical methods?
%Numerical methods is just mathematical guessing and approximation
%The three topics that we go over in this class are:
%Interpolation and extrapolation
%Curve fitting
%Calculus stuff


%% What is interpolation and extrapolation
%Interpolation is guessing new data points that are inside of your domain
%Extrapolation is guessing new data points that are outside of your domain

%How to do interpolation in matlab

%% newy = interp1(x,y,newx)
%uses linear interpolation in order to estimate new points

x = 1:50;
y = x.^2;
newy = interp1(x,y,[3.5, 5.76,10]);


%%guess newx values
%newx = interp1(y,x,newy)



%% newy = spline(x,y,newx)
%uses spline interpolation in order to estimate new points
x = 1:50;
y = x.^2;
newySpline = spline(x,y,[3.5, 5.76,10]);




%% How to do extrapolation in matlab

%% newy = interp1(x,y,newx)
x = 1:50;
y = x.^2;
newyExtrap = interp1(x,y,[3.5,5.76,50.5]);

%last 2 values will be NaN because you are trying to interpolate
%on values outside of the domain


%% newy = interp1(x,y,newx,method,'extrap')
%other methods are: spline,linear,cubic...look at documentation for more!
%%newy = interp1(x,y,newx,'linear','extrap')
% newy = interp1(x,y,newx,[],'extrap')
x = 1:50;
y = x.^2;
newx = [3.5,5.76,50.5];
newyExtrap2 = interp1(x,y,newx,'linear','extrap');

%last 2 values will be extrapolated. Other values will be interpolated

%% newy = spline(x,y,newx)
x = 1:50;
y = rand(1,50)*3+730; %can be random numbers
newyExtrap3 = spline(x,y,[3.5,5.76,50.5]);


%automatically extraps and interps for you with no extra inputs




%IMPORTANT NOTE: INTERPOLATION AND EXTRAPOLATION ONLY LOOK AT LOCAL POINTS
%THIS MEANS THAT YOUR GUESS CAN BE VERY WRONG IF YOUR NEWX IS SURROUNDED
%BY OUTLIERS!!!!




%% What is curve fitting
%Curve fitting is producing lines of best fit.


%% coeffs = polyfit(x,y,order)

x = 1:10;
y = [3 5 1 9 2 0 1 9 3 8];
%create coeff vector for a 1st order polynomial that fits the data
coeffs = polyfit(x,y,4);

%relationship between coeffs vector and data
%%length(coeffs) = order + 1;

%% newy = polyval(coeffs,newx)
x = 1:10;
y = [3 5 1 9 2 0 1 9 3 8];
coeffs = polyfit(x,y,4);
newy = polyval(coeffs,[3.5,10, 12]);


%plug in the newx values to the polynomial
%NOTE: although my newx is techically the same as my original x values, it
%is not guaranteed that I will get back the original y values. This is
%because polyval is using the polynomial for a 1st order line of best fit
%in order to estimate newy values. This 1st order line is not guaranteed to
%go through each of the original data points.



%% Highest order unique best fit
%Guaranteed to produce a polynomial that passes through each point
%HOUBF = length(x) (or y) - 1

x = 1:10;
y = [3 5 1 9 2 0 1 9 3 8];
%this will be the coeffs of a polynomial that is GUARANTEED to pass through
%each of my original data points.
HOUBFcoeffs = polyfit(x,y,length(x)-1);
newy = polyval(HOUBFcoeffs,[4,10,3]);

%%IMPORTANT NOTE: CURVE FITTING IS BASED ON THE OVERALL TREND OF YOUR DATA
%%THEREFORE, OUTLIERS DON'T HAVE THAT MUCH OF AN EFFECT



%% Calculus

%Derivatives

%% numerical derivative
%simiar to dy/dx
x = 1:50;
y = x.^3+ 4.*x;
firstDeriv = diff(y)./diff(x);%firstDeriv is length 49 NOT 50

%second Deriv
secondDeriv = diff(firstDeriv)./diff(x(2:end));
%%get rid of first value to match dimensions


%% analytical derivative
%polynomial is 4x^2 + 3x + 10
%want 8x + 3
%[4 3 10] --> [8 3]
coeffs = [4 3 10];
pows = length(coeffs) - 1:-1:0;
derivCoeffs = coeffs .* pows;
derivCoeffs(end) = [];


%% numerical integral
x = 1:2:50;
y = x^2 + 3*x + 6;
%the actual area under the curve is the last value of the vector
intVec = cumsum(y);   %uses rectangular reimann sums
intVec2 = cumtrapz(x,y);%uses trapazoidal reimann sums

int = trapz(x,y); %one number that is the area under the curve using trapazoidal reimann sums

A = int == intVec2(end); %true
B = int == intVec(end); %might be false because 2 different methods


%% analytical integral
%polynomial is 4x^2 + 3x + 10
%want polynomial (4/3)x^3 + (3/2)x^2 + 10x^1 + C
coeffs = [4 3 10];
% pows = length(coeffs)-1:-1:0 [2 1 0]
% intVec = coeffs./(pows+1); [4 3 10]/[3 2 1]
pows = length(coeffs):-1:1;
intVec = coeffs./pows;
C = 5; %some constant defined
intVec = [intVec C];

%% Plotting

%% plot function

%plot(x,y,style)
x = 1:10;
y = x.^2;
plot(x,y,'--ok')




%% plotting a square
x = [0 1 1 0 0];
y = [0 0 1 1 0];
plot(x,y,'r--')



%to create a closed shape, you have to repeat the first point as the last
%point!



%making plots pretty

%changing axis
%axis function
axis([-5,5,-5,5])
%axis([minx,maxX,miny,maxY])
%axis square
%axis equal

%adding a title
%title('name of title')
title('square!')

%adding axis labels
%xlabel('time')
%ylabel('velocity')

%% plotting a circle
%if I want a full circl, go from 0 -> 2*pi
th = linspace(0,2*pi,1000);
r = 4;

%you can move the cirlce around
trans_x = 5;
trans_y = 3;

%using polar coordinates to find values for x and y
x = r * cos(th) + trans_x;
y = r * sin(th) + trans_y;

plot(x,y,'k-')




%% plotting multiple plots on one figure

%% method 1: using extra inputs in plot command

x = 1:10;
y = x.^2;
x2 = 20:30;
y2 = x2.^2 .* sin(x2);
plot(x,y,'g--',x2,y2,':b');



%% method 2: using hold on
th = linspace(0,2*pi);
r = 5;
x = r * cos(th);
y = r * sin(th);
plot(x,y)

%hold on allows plots commands afterwards NOT to overwrite that is already
%on the plot. If this wasn't here, I would only have the magenta square
hold on
%now this plot has both the circle and the square
x2 = 20:30;
y2 = x2.^2 .* sin(x2);
plot(x2,y2)


%% subplot

%subplot(row,cols,ind)the index starts where it wants to take effect in

subplot(2,2,1)
x2 = 20:30;
y2 = x2.^2 .* sin(x2);
plot(x2,y2)


%once you call subplot, until you call another subplot, all the plotting
%and figure formatting will happen to that subplot, NOT the other ones.
subplot(2,2,4)
th = linspace(0,2*pi);
r = 5;
x = r * cos(th);
y = r * sin(th);
plot(x,y)
title('OMG A CIRCLE')
axis square

subplot(2,2,1)
title('uhhhh')



%% Example
%Give some x and why values, plot lines of best fit of increasing order
%until the Highest order unique best fit (HOUBF)

%create some data points
x = 1:50;
y = x.^.4 + sin(x);
plot(x,y,'.k','MarkerSize',30)

for order = 1:length(x) - 1%%from 1 to the HOUBF
coeffs = polyfit(x,y,order);%find the coeffs of a line of best fit

%produce 100 evenly space points from the min x value to the max x value.
%These can then be used to plot a line of best fit
newx = linspace(min(x),max(x)); %no need to include 100 inside the statement because 100 
%is the default value for linspace

%plug in the 100 newx values into the polynomial found from polyfit. This
%will find the y values for the line of best fit.
newy = polyval(coeffs,newx);

hold on %make all of the plots show up on the same figure
plot(newx,newy) %plot the line of best fit
axis([min(x),max(x),min(y),max(y)]) %adjust the axis
pause(0.2) %wait a little
end


%% Past Test Example
%Look at Fall16FinalExam.docx
%Look at Fall16Exam3.docx




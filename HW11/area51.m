function [craft] = area51(data, range, days)

%take out the time data
time = data(1,:);
%take out the velocity data
velocity = data(2,:);
%find position by multiplying velocity by time 
position = cumtrapz(time,velocity);
%if you want to find acceleration take the derivative of velocity
firstDeriv = diff(velocity)./diff(time);
firstDeriv = [0 firstDeriv];
timeNew = [0 time(2:end)];
%turn hold on to make sure nothing overrides each other
hold on

%this is the plot for position vs time
subplot(3,1,1)
plot(time(1:end),position(1:end), 'b-',time(1:end),position(1:end),'b*')
title('Position vs. Time')
xlabel('Time (s)')
ylabel('Position (m)')
axis([0 time(end) 0 max(position)])

%now to plot velocity vs time
subplot(3,1,2)
plot(time(1:end),velocity(1:end),'g-',time(1:end),velocity(1:end),'g+')
title('Velocity vs. Time')
xlabel('Time (s)')
ylabel('Velocity (m/s)')
axis([0 time(end) 0 max(velocity)])

%now to plot acceleration
subplot(3,1,3)
plot(timeNew(1:end),firstDeriv(1:end),'r-',timeNew(1:end),firstDeriv(1:end),'rd')
title('Acceleration vs. Time')
xlabel('Time (s)')
ylabel('Acceleration (m/s^2)')
axis([0 time(end) 0 max(firstDeriv)])

%now to test for whether the craft was from an alien planet or not
range = sort(range);%this is in km
seconds = days * 24 * 60 * 60;%this is in seconds because this is how the graph should look like
distance = interp1(time,position,seconds,'linear','extrap');%this is the distance in m
distance = 0.001 * distance;%convert to km

if (distance > range(1)) & (distance <= range(2))
    craft = sprintf('You''ve found the alien planet! It is located %.2f km away.',distance);
else
    craft = sprintf('This craft did not come from the known alien planet. Better luck next time!');
end
end
%%%
% File: Lect_29_Num_Methods.m
%%%
%
%   TA Hiring Begins
%
%   CONCEPTS
%   - numerical methods
%	Create some fake experimental data:
%	measurements of velocity (v) against time (t)
%
clear
clear global
clc
close all

v =[ 0.18 0.69 1.41 0.14 0.36 -0.99 -1.67 ...
    -1.08 -1.03 -0.42 0.51 1.09 0.47];
t =[ 1.64 4.66 10.36 14.33 16.02 21.45 25.32 ...
    29.16 34.47 36.05 40.27 43.47 50.75];
plot(t, v, 'rs')
% interpolation
% - linear
ts = linspace(t(1) - 3, t(end) + 3);
vs = interp1(t, v, ts);
hold on
plot(ts, vs, 'g')
% - spline
vs = spline(t, v, ts);
plot(ts, vs, 'k')
grid on
title('garbage data^2')
xlabel('time (sec)')
ylabel('velocity (m/sec)')

figure
plot(t, v, 'rs')
grid on

%%%
%   IMPLEMENTATION
%   - interpolation - when there is not enough data

%   - polynomial fitting - when the data are noisy
%   - differentiation / integration - changing the nature of the plots
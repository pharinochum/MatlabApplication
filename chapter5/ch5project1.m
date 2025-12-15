% Author: CHUM Pharino
% Date: 16/06/2025

% Project: Enginer piston crank
clear; close all; clc;
%STEP 1: Input data/initialize vars
r = 120; c = 250; % crank saft dimension
t = 0:0.001:.48; % time from 0s--> 60s
%STEP 2: Computation
theta = 26.18*t;
x = r*cos(theta) + sqrt(c^2 -r^2*sin(theta).^2);% displacement
xd = -r^2*sin(theta) - ...
(r^2*26.18*sin(theta))./...
(2*sqrt(c^2 - r^2*(sin(theta)).^2)); % velocity

%STEP 3: Show result
figure;
subplot(2,1,1); plot(t,x);grid minor;
xlabel('Time[s]'); ylabel('Displacement x[mm]');
subplot(2,1,2);plot(t,xd); grid minor;
xlabel('Time[s]'); ylabel('velocity [mm/s]');




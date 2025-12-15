% NAME: CHUM Pharino
% DATE: 07-07-2025

%Step 1: initiate variable, data input
clear; close all; clc;
date = 1:30;
temperature = [...
35 28; 34 28; 33 28; 35 26; 36 27; 36 27; 35 27; ...
35 27; 34 26; 33 26; 29 26; 31 26; 31 26; 34 26; ...
35 26; 35 26; 34 27; 34 26; 34 26; 35 26; 34 26; ...
31 26; 32 26; 34 26; 35 26; 35 26; 33 26; 33 25; 32 26; 35 27];

%Step 2: computation
%1: make plot for higher and lower temperature
plot(date, temperature(:,1));
hold on;
plot(date, temperature(:,2),'-.');
hold off;
xlabel('Date of JUNE 2025'); ylabel('Temperature[c]');
ylim([20 40]); grid minor;
title("Lower and higher temperature in JUNE 2025,Phnom Penh");
legend('Higher temperature', 'Lower Temperature');

%2. number of day temperature is above 35
t  = 35;
nday = sum(temperature(:,1) > t);
fprintf("Number of day temperature is above %d  is %d.\n", t, nday);

%3. number of day temperature is between 33-35
l = 33; h = 35;
nday = sum((temperature(:,1) >= l)&((temperature(:,1) <= h)));
fprintf("Number of day temperature is  between %d - %d  is %d.\n", l,h, nday);

%4. day of the month temperature is between 33-35
y = date((temperature(:,1) >= l)&((temperature(:,1) <= h)));
disp(y');


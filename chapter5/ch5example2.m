clear; close all; clc
x = [-2:0.01:4]; % -2 <= x <= 4
y = 3*x.^3 -26*x + 10;
yd = 9*x.^2 -26; % y'
ydd = 18*x; %y''

figure;
plot(x,y,'b');
%hold on;
line(x,yd);
line(x,ydd);
%hold off;

legend('f(x)', '\bf first derivative \rm of \fontsize{25}f(x)',...
'second derivative of f(x)');


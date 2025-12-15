clear;  close all; clc;

% initialization inputs
x = [-10, 10];
d = (x(2)- x(1))*(sqrt(5)-1)/2;
x1 = x(1) + d;
x2 = x(2) - d;

X = [x(1), x2, x1, x(2)];


for n = 1:20
  Fx = func_test(X);
  Xn = func_goldensearch(X,Fx); % new vector input
  X = Xn;
end
Xmax = (X(1) + X(2))/2;
Fmax = func_test(Xmax);
fprintf('Maximum value of this function is Ymax %.5f where Xmax is %.5f.\n', Fmax, Xmax);








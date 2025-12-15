% Example code
clear; close all; clc;
n = 20;
T = 0;
S = 0;
for k = 1:n
  T = (k*(-1)^k)/(2^k);
  S = S + T;
  fprintf('Value of T= %f,  S = %f \n', T, S);
end

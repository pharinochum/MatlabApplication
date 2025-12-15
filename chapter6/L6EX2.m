% NAME: CHUM Pharino
% DATE: 07-07-2025

% Example 2:weekly wage
clear; close all; clc;
%STEP1: get inputs
hour = input('How many working hour? ');
wage = input('What is hourly wage? ');

%STEP2: compute weekly wage
pay_OT= 0;
hour_NOOT = hour;

if (hour > 48)% with OT
  pay_OT = (hour - 48)*wage*1.5;
  hour_NOOT = 48;
end
pay = pay_OT + wage*hour_NOOT;


%STEP3: show result
fprintf("Weekly wage is $%.2f.\n",pay )


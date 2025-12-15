% NAME: CHUM Pharino
% DATE: 21-07-2025

% Example 2:weekly wage
clear; close all; clc;
%STEP1: get inputs
hour = input('How many working hour? ');
wage = input('What is hourly wage? ');

%STEP2: compute weekly wage
pay_OT= 0;

if (hour > 48)% with OT
  %probe for type of OT
  disp('... Worker entiled OT compensation: ');
  disp('... Types of OT: ');
  disp('... >> 1 for Normal work day.');
  disp('... >> 2 for weekly time off.');
  disp('... >> 3 for public holiday.');
  disp('... >> 4 for nightwork.');
  OT_Type = input('');
  switch OT_Type
    case 1
      OT_Rate = 1.5;
    case 2
      OT_Rate = 2;
    case 3
      OT_Rate = 2;
    case 4
      OT_Rate = 2;
  endswitch
  pay_OT = (hour - 48)*wage*OT_Rate;
  pay = pay_OT + wage*48;
else% No OT
  pay = wage *hour;
end
%STEP3: show result
fprintf("Weekly wage is $%.2f.\n",pay )


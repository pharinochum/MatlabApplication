% Author: Pharino Chum
% Affiliation: Norton University
% Date: 13 August 2025

clear; close all; clc;

%STEP1: load padckage
pkg load arduino;

%STEP2: setup board and serial port
arduinoOBJ = arduino('COM5','mega2560');

%STEP3: pin configurations
led_pin = "d13";
%STEP4: main program
for i = 0:10
    writeDigitalPin (arduinoOBJ, led_pin, 0);
    value = readDigitalPin (arduinoOBJ,  "d2");
    disp(value)
    pause (1);
    writeDigitalPin (arduinoOBJ, led_pin, 1);
    value = readDigitalPin (arduinoOBJ,  "d2");
    disp(value)
    pause (1)
endfor

clear arduinoOBJ;

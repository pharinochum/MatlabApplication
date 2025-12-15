% Example1: plot Cambodia's per capita energy use.
clear; close all; clc; % clear memory, close all figure; clear screen

% step 1: load data
% there are two array after load data: 1) year 1x42 2) per_capita_energy_use 1x42
load('data_cambodia.mat');

%per_capita_energy_use = [213.39	219.09	230.18	241.7	255.31	248.37	241.12	233.49	242.95	235.43	229.13	234.03	224.29	212.79	205.51	568.52	610.13	702.98	804.94	812.66	739.46	769.41	754.14	803.82	813.56	909.82	968	1116.2	1152.2	1399.9	1591.3	1623.9	1783.7	1866.1	2031.7	2299.2	2828.7	2950.3	3674.9	4069.5	3918.6	4035.1];
%year = 1980:2021;

% step 2: create graphic
figure; % create new figure;
plot(year, per_capita_energy_use, ':pk', 'LineWidth',1, 'MarkerSize',6); % create 2D plot
xlim([1975 2025]); ylim([0 5000]); % limit viewing axes
grid on;% add grid
grid minor;
xlabel('Year'); ylabel('Energy [KWh]')% add x-label and y-label
title('Energy used per person')% add title
legend('Cambodia');

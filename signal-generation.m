clc;
clear;
close all;

% Time axis
t = -5:0.1:5;

%% 1. Unit Impulse Signal
n = -5:5;
impulse = (n == 0);

figure(1);
stem(n, impulse);
title('Unit Impulse Signal');
xlabel('n');
ylabel('Amplitude');


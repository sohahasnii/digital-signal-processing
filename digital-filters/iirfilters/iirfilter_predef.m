%% IIR filter design using built-in functions
clc;
clear;
close all;

% Filter specifications
N = 4;              % Filter order
fc = 100;           % Cutoff frequency in Hz
fs = 1000;          % Sampling frequency in Hz

% Normalize cutoff frequency
Wn = fc/(fs/2);

% Design IIR Butterworth filter
[b,a] = butter(N,Wn,'low');

% Generate input signal
t = 0:1/fs:0.1;
x = sin(2*pi*20*t) + sin(2*pi*300*t);

% Apply filter
y = filter(b,a,x);

% Plot signals
subplot(2,1,1);
plot(t,x);
title('Input Signal');
xlabel('Time (s)');
ylabel('Amplitude');


subplot(2,1,2);
plot(t,y);
title('IIR Butterworth Low Pass Output');
xlabel('Time (s)');
ylabel('Amplitude');

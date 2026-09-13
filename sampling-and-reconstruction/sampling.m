clc;
clear all;
close all;

f0 = 2000;              % Input frequency in Hz
cycles = 5;             % Number of cycles to be represented in the signal (sine wave here)
Fs = 50*f0;             % Sampling frequency (50 samples per cycle)

t = 0:1/Fs:cycles/f0 ;   % Time vector


x = sin(2*pi*f0*t);

subplot(2,1,1)
plot(t,x);
xlabel("Time");
ylabel("Amplitude");
title("SINE SIGNAL");

subplot(2,1,2)
stem(t,x);
xlabel("Time");
ylabel("Amplitude");
title("SAMPLED SINE SIGNAL");

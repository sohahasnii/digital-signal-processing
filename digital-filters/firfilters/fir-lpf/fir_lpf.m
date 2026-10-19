clc;
clear;
close all;

% FIR Low Pass Filter
N = 50;                 % Filter order
fc = 1000;               % Cutoff frequency in Hz
fs = 8000;               % Sampling frequency in Hz

% Normalized cutoff frequency
Wn = fc/(fs/2);

% Design FIR LPF using Hamming window
b = fir1(N, Wn, 'low', hamming(N+1));
a = 1;

% Generate input signal
t = 0:1/fs:0.05;
x = sin(2*pi*200*t) + sin(2*pi*2500*t);

% Apply filter
y = filter(b, a, x);

% Plot input and output signals
subplot(3,1,1);
plot(t, x);
title('Input Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t, y);
title('Filtered Output Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Frequency response
subplot(3,1,3);
freqz(b, a, 1024, fs);
title('Frequency Response of FIR LPF');

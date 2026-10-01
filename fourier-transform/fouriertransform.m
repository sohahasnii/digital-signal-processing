clc;
clear all;
close all;

% Sampling frequency
Fs = 1000;

% Time vector
t = 0:1/Fs:1;

% Input signal
f1 = 50;
f2 = 120;

x = sin(2*pi*f1*t) + 0.5*sin(2*pi*f2*t);

% Fourier Transform
X = fft(x);

% Length of signal
N = length(x);

% Frequency axis
f = (0:N-1)*(Fs/N);

% Magnitude spectrum
magnitude = abs(X)/N;

% Plot input signal
subplot(2,1,1);
plot(t,x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Input Signal');
grid on;

% Plot Fourier Transform
subplot(2,1,2);
plot(f,magnitude);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Fourier Transform');
grid on;

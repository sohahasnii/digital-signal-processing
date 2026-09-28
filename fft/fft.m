clc;
clear all;
close all;

% Enter the signal
x = input('Enter the signal samples: ');

% Enter sampling frequency
Fs = input('Enter the sampling frequency (Hz): ');

% Length of signal
N = length(x);

% Calculate FFT
X = fft(x);

% Magnitude spectrum
magnitude = abs(X);

% Frequency axis
f = (0:N-1) * (Fs/N);

% Consider only positive frequencies
half_N = floor(N/2) + 1;

f_positive = f(1:half_N);
magnitude_positive = magnitude(1:half_N);

% Display frequency components
disp('Frequency components:');
disp(f_positive);

disp('Magnitude of frequency components:');
disp(magnitude_positive);



% Plot time-domain signal
subplot(211)
stem(0:N-1, x);

xlabel('Sample Number');
ylabel('Amplitude');
title('Input Signal');



% Plot frequency spectrum
subplot(212)

stem(f_positive, magnitude_positive);

xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('FFT Frequency Spectrum');

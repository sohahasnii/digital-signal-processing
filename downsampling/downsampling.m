clc;
clear all;
close all;

% Input signal
x = [1 2 3 4 5 6 7 8 9 10];

% Downsampling factor
M = 2;

% Downsample the signal
y = x(1:M:end);

% Display original and downsampled signals
disp('Original Signal:');
disp(x);

disp('Downsampled Signal:');
disp(y);

% Plot signals
subplot(2,1,1);
stem(x);
title('Original Signal');
xlabel('Sample Number');
ylabel('Amplitude');

subplot(2,1,2);
stem(y);
title('Downsampled Signal');
xlabel('Sample Number');
ylabel('Amplitude');

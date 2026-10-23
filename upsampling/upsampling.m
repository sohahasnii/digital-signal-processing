
clc;
clear;
close all;

% UPSAMPLING AND INTERPOLATION USING MATLAB

fs = 1000;             % Original sampling frequency in Hz
f = 50;                % Signal frequency in Hz
t = 0:1/fs:0.02;       % Time vector
x = sin(2*pi*f*t);     % Sine wave

L = 4;  %Upsampling factor


x_up = upsample(x, L);  %Upsampling by inserting zeros
fs_new = L * fs;


t_up = (0:length(x_up)-1)/fs_new; % Time vector for the upsampled signal


x_interp = interp(x, L);    % Apply low-pass interpolation filter


t_interp = (0:length(x_interp)-1)/fs_new;  % Match the time vector to the interpolated output

subplot(3,1,1);
plot(t, x);
title('Original Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');


subplot(3,1,2);
stem(t_up, x_up);
title('Upsampled Signal (Zero Insertion)');
xlabel('Time (seconds)');
ylabel('Amplitude');


subplot(3,1,3);
plot(t_interp, x_interp);
title('Interpolated Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');

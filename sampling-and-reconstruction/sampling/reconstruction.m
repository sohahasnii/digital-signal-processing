clc;
clear;
close all;

% Original signal
f = 10;                  % Signal frequency = 10 Hz
Fs = 100;                % Sampling frequency = 100 Hz
t = 0:0.001:1;           % Continuous-time axis

x = sin(2*pi*f*t);       % Original signal

% Sampling
ts = 0:1/Fs:1;
xs = sin(2*pi*f*ts);

% Reconstruction using interpolation
xr = interp1(ts, xs, t, 'spline');

% Plot original and sampled signal
figure;

subplot(3,1,1);
plot(t, x, 'b', 'LineWidth', 1.5);
title('Original Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
stem(ts, xs, 'r', 'filled');
title('Sampled Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot(t, x, 'b--', 'LineWidth', 1);
hold on;
plot(t, xr, 'r', 'LineWidth', 1.5);
title('Reconstructed Signal');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Original', 'Reconstructed');
grid on;

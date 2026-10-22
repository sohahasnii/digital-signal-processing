clc;                 
clear all;           
close all;           
f1 = input('enter frequency 1:'); % Gets the first frequency from the user
f2 = input('enter frequency 2:'); % Gets the second frequency from the user
f3 = input('enter frequency 3:'); % Gets the third frequency from the user

f0 = 0.003;          % Total signal duration is 0.003 seconds (3 ms) as an example
fs = 40*3000;        % Defines the sampling frequency 

t = 0:1/fs:0.003;    % Creates the time vector from 0 to 3 ms

for i = 1:length(t)  % Iterates through every time sample

    if t(i) < 0.001               % Checks whether time is less than 1 ms
        y(i) = sin(2*pi*f1*t(i)); % Generates the first sine wave

    else if t(i) < 0.002          % Checks whether time is between 1 ms and 2 ms
        y(i) = sin(2*pi*f2*t(i)); % Generates the second sine wave

    else
        y(i) = sin(2*pi*f3*t(i)); % Generates the third sine wave
    end
    end

end

plot(t*1000, y);     % Plots the signal against time in milliseconds
xlabel('Time (ms)'); 
ylabel('Amplitude'); % Labels the y-axis
title('Piecewise Sinusoidal Signal'); 

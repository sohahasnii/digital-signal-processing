clc;
clear;
close all;

fs = 70000;      % Sampling frequency
fc = 5000;       % Cutoff frequency

N = 50;          % Filter order

wn = fc/(fs/2);  % Normalized cutoff

b = fir1(N,wn,'low');

freqz(b,1,254,fs);
title('Low Pass FIR Filter');

t = 0:1/fs:2/5000;

x = sin(2*pi*1000*t) + sin(2*pi*3000*t);

y = myfirfilter(b,x);

figure;
subplot(2,1,1);
plot(t,x);
title('Input Signal');

subplot(2,1,2);
plot(t,y);
title('Filtered Output');

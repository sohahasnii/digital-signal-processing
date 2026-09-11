clc;
clear;
close all;

% time axis
n = -5:5;

%% UNIT IMPULSE
for i = 1:length(n)
    if n(i) == 0
        impulse(i) = 1;
    else
        impulse(i) = 0;
    end
end

figure(1);
stem(n, impulse);
title('Unit Impulse Signal');
xlabel('n');
ylabel('Amplitude');

%% UNIT STEP 
for i = 1:length(n)
    if n(i) >= 0
        step(i) = 1;
    else
        step(i) = 0;
    end
end

figure(2);
stem(n, step);
title('Unit Step Signal');
xlabel('n');
ylabel('Amplitude');

%% RAMP SIGNAL
for i = 1:length(n)
    if n(i) >= 0
        ramp(i) = n(i);
    else
        ramp(i) = 0;
    end
end

figure(3);
stem(n, ramp);
title('Ramp Signal');
xlabel('n');
ylabel('Amplitude');

%%SINE SIGNAL
f0=2000;  % input frequency (kHz)
cycles=5; % number of cycles in the signal
Fs=50*f0; % to obtain smooth sine wave 
t=0:1/Fs:cycles/f0;
y=sin(2*pi*f0*t);
figure(4);
stem(t,y);
xlabel("Time");
ylabel("Amplitude");
title("SINE SIGNAL");



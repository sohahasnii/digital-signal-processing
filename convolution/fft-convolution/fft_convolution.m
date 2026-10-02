clc;
clear;
close all;

% Take input sequences from the user
x = input('Enter input sequence x: ');
h = input('Enter input sequence h: ');

% Find lengths of input sequences
M = length(x);
N = length(h);

% Length required for linear convolution
L = M + N - 1;

% Perform FFT after zero padding
X = fft(x, L);
H = fft(h, L);

% Multiplication in frequency domain
Y = X .* H;

% Convert back to time domain using IFFT
y = ifft(Y);

% Remove very small numerical errors
y = real(y);

% Display the result
disp('Linear Convolution using FFT and IFFT:');
disp(y);

% Plot input sequence x[n]
subplot(3,1,1);
stem(0:M-1, x);
xlabel('n');
ylabel('Amplitude');
title('Input Sequence x[n]');


% Plot input sequence h[n]
subplot(3,1,2);
stem(0:N-1, h);
xlabel('n');
ylabel('Amplitude');
title('Input Sequence h[n]');


% Plot convolution result
subplot(3,1,3);
stem(0:L-1, y, 'filled');
xlabel('n');
ylabel('Amplitude');
title('Linear Convolution using FFT/IFFT');

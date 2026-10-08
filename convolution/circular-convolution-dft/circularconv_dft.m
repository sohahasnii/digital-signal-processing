clc;
clear all;
close all;

% Enter input sequences
x = input('Enter input sequence x(n): ');
h = input('Enter input sequence h(n): ');

% Make both sequences equal in length
N = max(length(x), length(h));

x = [x zeros(1, N-length(x))];
h = [h zeros(1, N-length(h))];

% Calculate DFT of both sequences
X = fft(x);
H = fft(h);

% Multiplication in frequency domain
Y = X .* H;

% Calculate IDFT
y = ifft(Y);

% Display results
disp('DFT of x(n):');
disp(X);

disp('DFT of h(n):');
disp(H);

disp('Circular Convolution using DFT and IDFT:');
disp(real(y));

% Plot sequences
subplot(3,1,1);
stem(0:N-1, x);
title('Input Sequence x(n)');
xlabel('n');
ylabel('Amplitude');

subplot(3,1,2);
stem(0:N-1, h);
title('Input Sequence h(n)');
xlabel('n');
ylabel('Amplitude');

subplot(3,1,3);
stem(0:N-1, real(y));
title('Circular Convolution using DFT/IDFT');
xlabel('n');
ylabel('Amplitude');

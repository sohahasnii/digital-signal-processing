
clc;
clear all;
close all;

% Original discrete-time signal
n = -5:5;
x = [0 0 1 2 3 4 3 2 1 0 0];

% Time Shifting
% Delay by 2 units
x_delay = [zeros(1,2) x(1:end-2)];

% Advance by 2 units
x_adv = [x(3:end) zeros(1,2)];

% Time Reversal
x_rev = fliplr(x);

% Time Scaling
% Expansion by factor of 2
n_exp = -10:2:10;
x_exp = x;

% Compression by factor of 2
n_comp = -2.5:0.5:2.5;
x_comp = x(1:2:end);

% Amplitude Scaling
A = 3;
x_amp = A*x;

% Addition of Signals
x2 = [1 1 1 1 1 1 1 1 1 1 1];
x_add = x + x2;

% Multiplication of Signals
x_mul = x .* x2;

% Even and Odd Decomposition
x_even = (x + x_rev)/2;  % from preveiously reversed signal x_rev
x_odd = (x - x_rev)/2;

% Plotting all operations

figure;

subplot(4,2,1);
stem(n,x);
title('Original Signal');
xlabel('n'); ylabel('x(n)');


subplot(4,2,2);
stem(n,x_delay);
title('Time Delay');
xlabel('n'); ylabel('x(n-2)');


subplot(4,2,3);
stem(n,x_adv);
title('Time Advance');
xlabel('n'); ylabel('x(n+2)');


subplot(4,2,4);
stem(n,x_rev);
title('Time Reversal');
xlabel('n'); ylabel('x(-n)');


subplot(4,2,5);
stem(n_exp,x_exp);
title('Time Expansion');
xlabel('n'); ylabel('x(n/2)');


subplot(4,2,6);
stem(n_comp,x_comp);
title('Time Compression');
xlabel('n'); ylabel('x(2n)');


subplot(4,2,7);
stem(n,x_amp);
title('Amplitude Scaling');
xlabel('n'); ylabel('3x(n)');


figure;

subplot(2,2,1);
stem(n,x_add);
title('Addition');
xlabel('n'); ylabel('x(n)+x2(n)');

subplot(2,2,2);
stem(n,x_mul);
title('Multiplication');
xlabel('n'); ylabel('x(n)*x2(n)');


subplot(2,2,3);
stem(n,x_even);
title('Even Component');
xlabel('n'); ylabel('xe(n)');


subplot(2,2,4);
stem(n,x_odd);
title('Odd Component');
xlabel('n'); ylabel('xo(n)');


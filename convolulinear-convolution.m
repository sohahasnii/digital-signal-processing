
clc;
clear all;
close all;

% Take input sequences from the user
x = input('Enter input sequence 1: ');           % First input sequence EX:[1 2 3 4]
h = input('Enter input sequence 2: ');           % Second input sequence EX:[2 3 4 5]

% Find the lengths of the input sequences
M = length(x);                % Length of x
N = length(h);                % Length of h

% Length of the linear convolution result
ly = M + N - 1;

% Append zeros to x
% N-1 zeros are added to make the length equal to ly
xm = [x, zeros(1,N-1)];

% Append zeros to h
% M-1 zeros are added to make the length equal to ly
hm = [h, zeros(1,M-1)];

% Reverse the padded h sequence
hr = fliplr(hm);

% Perform linear convolution using the shifting method
for i = 1:ly

    % Shift the reversed sequence and append zeros
    hrms = [hr(end-i+1:end), zeros(1,ly-i)];

    % Multiply corresponding elements and add them
    % This gives one output sample of the convolution
    y(i) = xm * hrms';

end

% Plot the convolution output
subplot(3,1,1);
stem(x);
xlabel('TIME');
ylabel('AMPLITUDE');
title('INPUT SEQUENCE 1');

subplot(3,1,2);
stem(h);
xlabel('TIME');
ylabel('AMPLITUDE');
title('INPUT SEQUENCE 2');

subplot(3,1,3);
stem(y);
xlabel('TIME');
ylabel('AMPLITUDE');
title('LINEAR CONVOLUTION IN TIME DOMAIN');

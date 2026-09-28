clc;
clear all;
close all;

% Input sequences
x = [1 2 3 4 5];          % First input sequence
h = [2 3 4 5];            % Second input sequence

% Find lengths of the input sequences
lx = length(x);
lh = length(h);

% Make both sequences equal in length
% by appending zeros to the shorter sequence
if lx < lh
    x = [x zeros(1, lh - lx)];
else
    h = [h zeros(1, lx - lh)];
end

% New length after zero padding
newlx = length(x);

% Rearrange h for circular convolution
% Take the first element as it is and reverse the remaining elements
hrm = [h(1), fliplr(h(2:end))];

% Initialize the shifted sequence
hr = hrm;

% Preallocate output sequence
y = zeros(1, newlx);

% Perform circular convolution
for i = 1:newlx

    % Multiply x with the current circularly shifted h
    % and add all the products
    y(i) = x * hr';

    % Circularly shift h by one position
    hr = circshift(hrm, [0 i]);

end

% Plot first input sequence
subplot(3,1,1);
stem(x);
xlabel('n');
ylabel('Amplitude');
title('Input Sequence x(n)');


% Plot second input sequence
subplot(3,1,2);
stem(h);
xlabel('n');
ylabel('Amplitude');
title('Input Sequence h(n)');

% Plot circular convolution output
subplot(3,1,3);
stem(y);
xlabel('n');
ylabel('Amplitude');
title('Circular Convolution in Time Domain');



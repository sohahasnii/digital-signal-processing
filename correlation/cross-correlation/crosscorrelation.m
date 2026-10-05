clc;
clear all;
close all;

% Enter the first sequence
x = [1 2 3 4 5]  % taking as an example

% Enter the second sequence
h = [2 3 4 5]    % taking as an example

% Find lengths
M = length(x);
N = length(h);

% Reverse the second sequence
h_rev = fliplr(h);

% Initialize output
y = zeros(1, M + N - 1);

% Perform correlation
for n = 1:(M + N - 1)

    for k = 1:M

        if (n-k+1 >= 1) && (n-k+1 <= N)
            y(n) = y(n) + x(k) * h_rev(n-k+1);
        end

    end

end

% Generate lag values
lags = -(N-1):(M-1);

% Display result
disp('Cross-correlation result:');
disp(y);

disp('Lag values:');
disp(lags);


stem(lags, y);

xlabel('Lag');
ylabel('Correlation');
title('Cross-Correlation of Two Sequences');

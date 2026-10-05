clc;
clear;
close all;

% Enter the given discrete-time signal
x = input('Enter the signal for autocorrelation: ');

% Find the length of the signal
N = length(x);

% Initialize autocorrelation sequence
r = zeros(1, 2*N - 1);

% Calculate autocorrelation for different time lags
for k = -(N-1):(N-1)

    correlation_sum = 0;

    for n = 1:N

        % Check whether the shifted sample is within the signal range
        if (n-k >= 1) && (n-k <= N)

            % Multiply corresponding samples and accumulate
            correlation_sum = correlation_sum + x(n) * x(n-k);

        end

    end

    % Store the autocorrelation value
    r(k+N) = correlation_sum;

end

% Display the autocorrelation sequence
disp('Autocorrelation sequence:');
disp(r);

% Plot autocorrelation
subplot(2,1,1);
stem(-(N-1):(N-1), r, 'filled');
xlabel('Lag (k)');
ylabel('Autocorrelation');
title('Autocorrelation of Given Signal');
grid on;

% Calculate the Fourier Transform of the signal
X = fft(x);

% Calculate the power spectrum
P = abs(X).^2 / N;

% Display the power spectrum
disp('Power Spectrum:');
disp(P);

% Plot power spectrum
subplot(2,1,2);
stem(0:N-1, P, 'filled');
xlabel('Frequency Index');
ylabel('Power');
title('Power Spectrum of Given Signal');
grid on;


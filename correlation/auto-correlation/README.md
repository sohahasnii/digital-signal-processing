# Autocorrelation and Power Spectrum using MATLAB

## Overview

This project implements **autocorrelation** and **power spectrum analysis** of a discrete-time signal using MATLAB.

The autocorrelation is calculated manually using nested `for` loops and conditional indexing. The **Fast Fourier Transform (FFT)** is then used to obtain the frequency-domain representation of the signal and calculate its power spectrum.

This project demonstrates an important relationship in Digital Signal Processing:

> **The power spectrum of a signal is related to the Fourier Transform of its autocorrelation.**

---

## Objective

* Calculate the autocorrelation of a given discrete-time signal.
* Understand the effect of different time lags on signal similarity.
* Calculate the Fourier Transform using FFT.
* Obtain the power spectrum of the signal.
* Visualize both autocorrelation and power spectrum.

---

## Theory

### 1. Autocorrelation

Autocorrelation measures the similarity of a signal with a delayed or shifted version of itself.

For a discrete-time signal \(x[n]\), autocorrelation can be written as:

$$
r_{xx}[k] = \sum_n x[n]x[n-k]
$$

where:

* \(x[n]\) = input signal
* \(k\) = time lag
* \(r_{xx}[k]\) = autocorrelation at lag \(k\)

For a signal of length \(N\), the autocorrelation sequence contains:

$$
2N-1
$$

samples, corresponding to lags:

$$
-(N-1) \leq k \leq (N-1)
$$

The maximum autocorrelation generally occurs at **zero lag**, where the signal is compared with itself without any shift.

---

## 2. Power Spectrum

The Fourier Transform shows the frequency components present in a signal.

The FFT is calculated as:

```matlab
X = fft(x);
```

The power spectrum is then calculated as:

```matlab
P = abs(X).^2 / N;
```

where:

* `X` = Fourier Transform of the signal
* `abs(X)` = magnitude of the Fourier Transform
* `P` = power spectrum
* `N` = length of the signal

The power spectrum shows how the signal's power is distributed across different frequency components.

---

## Implementation

### Step 1 – Input Signal

The user enters a discrete-time signal:

```matlab
x = input('Enter the signal for autocorrelation: ');
```

### Step 2 – Autocorrelation

The autocorrelation is calculated manually using nested loops.

The outer loop changes the lag `k`, while the inner loop performs the multiplication and accumulation of corresponding samples.

```matlab
for k = -(N-1):(N-1)

    correlation_sum = 0;

    for n = 1:N

        if (n-k >= 1) && (n-k <= N)

            correlation_sum = correlation_sum + x(n) * x(n-k);

        end

    end

    r(k+N) = correlation_sum;

end
```

No MATLAB `xcorr()` function is used for the autocorrelation calculation.

### Step 3 – Fourier Transform

The FFT of the original signal is calculated:

```matlab
X = fft(x);
```

### Step 4 – Power Spectrum

The power spectrum is obtained from the magnitude squared of the FFT:

```matlab
P = abs(X).^2 / N;
```

### Step 5 – Plotting

Two plots are generated:

1. Autocorrelation versus lag
2. Power spectrum versus frequency index

---

## Example

For an input signal:

```matlab
[1 2 3 4]
```

the program calculates the autocorrelation for lags:

```text
-3 -2 -1 0 1 2 3
```

The zero-lag autocorrelation is:

$$
r_{xx}[0] = 1^2+2^2+3^2+4^2
$$

$$
r_{xx}[0] = 30
$$

The autocorrelation sequence is symmetric for this real-valued signal.

---

## Program Flow

```text
        Input Signal x[n]
                |
                v
        Find Signal Length N
                |
                v
       Calculate Autocorrelation
          using Nested Loops
                |
                v
       Display Autocorrelation
                |
                v
             FFT(x)
                |
                v
       Calculate |X(k)|² / N
                |
                v
        Power Spectrum P(k)
                |
                v
       Plot Both Results
```
RESULT: 
For a random input signal taken (as an example):

<img width="819" height="158" alt="image" src="https://github.com/user-attachments/assets/d690230b-623e-42e9-b5d0-1a9ab00a7736" />

the output obtained is:

<img width="973" height="617" alt="image" src="https://github.com/user-attachments/assets/b413accd-35a5-482f-9e0c-eb568793bb9a" />


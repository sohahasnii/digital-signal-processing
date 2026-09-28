# FFT-Based Frequency Component Analysis in MATLAB

## Overview

This project analyzes the frequency components present in a discrete-time signal using the **Fast Fourier Transform (FFT)** in MATLAB.
The user enters the signal samples and sampling frequency. The program calculates the FFT, obtains the magnitude spectrum, and identifies significant frequency components.


## How It Works

The program follows these steps:
1. Takes the signal samples from the user.
2. Takes the sampling frequency.
3. Finds the number of samples.
4. Calculates the FFT using MATLAB.
5. Calculates the magnitude spectrum.
6. Generates the frequency axis.
7. Extracts the positive-frequency components.
8. Identifies significant frequency components.
9. Plots the input signal.
10. Plots the frequency spectrum.

## 💻 MATLAB Function Used

The FFT is calculated using:

```matlab
X = fft(x);
```

The magnitude of the FFT is obtained using:

```matlab
magnitude = abs(X);
```

The frequency resolution is:

```text
Δf = Fs / N
```

where:

* `Fs` = Sampling frequency
* `N` = Number of samples
* `Δf` = Frequency resolution

## User Input

The program does not use a predefined signal.

The user enters:

```text
Enter the signal samples: [1 2 3 4 5]
Enter the sampling frequency (Hz): 1000
```

This allows different signals to be analyzed without modifying the program.

## Frequency Component Analysis

The FFT produces complex frequency-domain values.

The magnitude spectrum is calculated as:

```matlab
magnitude = abs(X);
```

A peak in the magnitude spectrum indicates a significant frequency component in the input signal.

For example, a signal containing multiple sinusoidal components will produce multiple peaks in its frequency spectrum.

## Output

The program generates two plots:

### 1. Input Signal

Shows the signal in the time domain.

### 2. FFT Frequency Spectrum

Shows the magnitude of the frequency components against frequency.

The peaks in this plot can be used to identify the dominant frequencies present in the signal.

Ex:
<img width="326" height="121" alt="image" src="https://github.com/user-attachments/assets/8ca86e53-fcfa-450a-9b34-87d05bd1126e" />

<img width="984" height="615" alt="image" src="https://github.com/user-attachments/assets/504aa756-77d2-4344-84bf-5e3645c19299" />


## Applications

FFT-based frequency analysis is widely used in:

* Digital Signal Processing
* Audio and speech processing
* Communication systems
* Radar and sonar
* Vibration analysis
* Biomedical signal processing
* Power-system analysis
* Noise and interference analysis



# IIR Butterworth Low Pass Filter Design Using MATLAB

## Overview
This project demonstrates the design and implementation of an Infinite Impulse Response (IIR) Low Pass Filter using MATLAB's built-in Butterworth filter design function.

The program generates a composite input signal containing two frequency components (20 Hz and 300 Hz) and processes it through a fourth-order Butterworth filter. The filter retains the low-frequency component while attenuating the high-frequency component.

## Features
- Designs an IIR Butterworth Low Pass Filter.
- Uses MATLAB's built-in `butter()` function.
- Allows modification of filter order and cutoff frequency.
- Generates a composite sinusoidal input signal.
- Filters unwanted high-frequency components.
- Visualizes input and filtered output waveforms.


## Project Parameters

| Parameter | Value |
|---|---|
| Filter Type | IIR Low Pass |
| Filter Design | Butterworth |
| Filter Order | 4 |
| Cutoff Frequency | 100 Hz |
| Sampling Frequency | 1000 Hz |
| Input Frequencies | 20 Hz, 300 Hz |

## How It Works

1. **Filter Specifications:** Defines the filter order, cutoff frequency and sampling frequency.
2. **Normalization:** Calculates the normalized cutoff frequency with respect to the Nyquist frequency.
3. **Filter Design:** Uses MATLAB's `butter()` function to calculate the numerator and denominator coefficients.
4. **Signal Generation:** Generates a composite signal containing 20 Hz and 300 Hz components.
5. **Signal Processing:** Applies the designed IIR filter using the `filter()` function.
6. **Visualization:** Plots the original input signal and the filtered output for comparison.

## Output

<img width="928" height="605" alt="image" src="https://github.com/user-attachments/assets/46b5857e-37f8-460e-a59a-44eee0011361" />


The program generates two plots:

- **Input Signal:** Displays the combination of 20 Hz and 300 Hz sinusoidal signals.
- **Filtered Output:** Displays the output after applying the Butterworth Low Pass Filter, where the 20 Hz component is retained and the 300 Hz component is attenuated.




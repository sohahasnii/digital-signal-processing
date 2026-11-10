# FIR Low Pass Filter Using Hamming Window

## Overview
This project demonstrates the implementation of a digital FIR (Finite Impulse Response) Low Pass Filter using MATLAB. It uses the Hamming window technique to separate low-frequency and high-frequency components from a composite input signal.

The program generates a signal containing two different frequency components (200 Hz and 2500 Hz), processes it through the designed FIR filter, and visualizes the difference between the original and filtered signals.

## Features
- Designs an FIR Low Pass Filter using the Hamming window method.
- Allows selection of filter order, cutoff frequency and sampling frequency.
- Generates a composite signal with multiple frequency components.
- Removes unwanted high-frequency components.
- Displays input and filtered output waveforms.
- Visualizes the filter's frequency response.


## Project Parameters

| Parameter | Value |
|---|---|
| Filter Order | 50 |
| Cutoff Frequency | 1000 Hz |
| Sampling Frequency | 8000 Hz |
| Window | Hamming |
| Input Frequencies | 200 Hz, 2500 Hz |

## How It Works

1. **Signal Generation:** Creates a composite sinusoidal signal containing 200 Hz and 2500 Hz frequency components.
2. **Filter Design:** Designs an FIR Low Pass Filter using the Hamming window.
3. **Signal Processing:** Passes the composite signal through the filter using MATLAB's `filter()` function.
4. **Visualization:** Plots the original input signal and filtered output.
5. **Frequency Analysis:** Uses `freqz()` to visualize the filter's frequency response and understand its attenuation characteristics.

## Output
<img width="972" height="599" alt="image" src="https://github.com/user-attachments/assets/6a58117a-8dab-4022-8152-dac34cc889c4" />

The project generates three visualizations:

- **Input Signal:** Shows the combination of 200 Hz and 2500 Hz sinusoidal signals.
- **Filtered Output:** Shows the low-frequency component retained after filtering, with the high-frequency component attenuated.
- **Frequency Response:** Displays the magnitude and phase response of the designed FIR filter.


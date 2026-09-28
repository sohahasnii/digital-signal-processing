# Circular Convolution in Time Domain

## Description

This MATLAB program performs **circular convolution of two discrete-time sequences in the time domain**.

The program:
* Takes two input sequences.
* Equalizes their lengths using zero-padding.
* Rearranges the second sequence by reversing its elements.
* Performs circular shifting.
* Calculates the circular convolution using the dot product.
* Plots the input sequences and the resulting circular convolution.

## Concept

For two sequences \(x(n)\) and \(h(n)\), circular convolution is given by:

$$
y(n) = \sum_{k=0}^{N-1} x(k)h((n-k)\mod N)
$$

where **N** is the common length of the sequences.

If the sequences have different lengths, zeros are added to the shorter sequence before performing circular convolution.

## 📊 Output

The program generates three plots:

1. **Input sequence x(n)**
2. **Input sequence h(n)**
3. **Circular convolution y(n)**
<img width="989" height="604" alt="image" src="https://github.com/user-attachments/assets/cabf9894-70f7-4934-abcf-e2a280d7224a" />


## 🎯 Applications

Circular convolution is commonly used in:

* Digital Signal Processing (DSP)
* Fast Fourier Transform (FFT) based filtering
* Digital filters
* OFDM communication systems
* Block processing of signals
* Discrete-time signal analysis
--
This experiment demonstrates how **circular convolution can be performed directly in the time domain using circular shifting and multiplication**.

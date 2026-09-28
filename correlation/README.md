# MATLAB Cross-Correlation Without `xcorr()`

## Overview

This project implements **cross-correlation of two discrete-time sequences in MATLAB without using the built-in `xcorr()` function**.

The input sequences are entered by the user at runtime. The program manually calculates the correlation using loops and displays the correlation values along with their corresponding lag values.



## How It Works

The program follows these steps:

1. Takes the first sequence from the user.
2. Takes the second sequence from the user.
3. Finds the lengths of both sequences.
4. Reverses the second sequence.
5. Performs multiplication and addition using nested `for` loops.
6. Generates the corresponding lag values.
7. Displays the correlation sequence.
8. Plots correlation against lag.

## 📊 Output

The program provides:

* Cross-correlation sequence
* Corresponding lag values
* Stem plot of correlation versus lag
EX: for 2 input sequences: [1 2 3 4 5] and [2 3 4 5]

<img width="411" height="101" alt="image" src="https://github.com/user-attachments/assets/0aafee3a-8e45-4fbe-b27f-373253aba355" />

<img width="961" height="616" alt="image" src="https://github.com/user-attachments/assets/c75dda64-2106-47dc-87f9-4ba618f0e5f9" />


## Principle

Cross-correlation measures the similarity between two signals as one signal is shifted relative to the other.

For two sequences `x(n)` and `h(n)`, the cross-correlation can be represented as:

```text
r(n) = Σ x(k) h(k-n)
```

The implementation uses the relationship between correlation and convolution: the second sequence is reversed before performing the multiplication and accumulation.

## Applications

Cross-correlation is used in:

* Digital Signal Processing
* Signal detection
* Signal synchronization
* Time-delay estimation
* Radar and sonar systems
* Communication systems
* Pattern matching


This project was created as part of MATLAB and Digital Signal Processing practice.

# FIR Low-Pass Filter – MATLAB

## Overview

This project demonstrates the design and implementation of a **Finite Impulse Response (FIR) Low-Pass Filter** using MATLAB.

The FIR filter coefficients are generated using MATLAB's `fir1()` function, while the actual filtering operation is implemented **manually using nested `for` loops** in a custom function called `myfirfilter()`.

This helps demonstrate how an FIR filter works internally rather than relying on MATLAB's built-in `filter()` function.

---

## Objective

* To design an FIR Low-Pass Filter.
* To understand FIR filter coefficients.
* To implement the FIR filtering equation using loops.
* To understand the role of delay, multiplication, and accumulation.
* To observe the frequency response of the designed filter.
* To compare the input signal with the filtered output.

---

## Theory

An FIR (Finite Impulse Response) filter produces an output based on the current and previous input samples.

The general FIR equation is:

$$
\boxed{
y[n] = \sum_{k=0}^{N} b[k]x[n-k]
}
$$

where:

* \(x[n]\) = input signal
* \(y[n]\) = output signal
* \(b[k]\) = FIR filter coefficients
* \(N\) = filter order

The basic operation is:

```text
Input Samples
     │
     ▼
 Delays
     │
     ▼
Multiply by FIR coefficients
     │
     ▼
   Add
     │
     ▼
Output y[n]
```

---

## Low-Pass FIR Filter

A Low-Pass Filter allows frequencies below its cutoff frequency to pass while attenuating frequencies above the cutoff frequency.

In this project:

$$
f_c = 5\,kHz
$$

Therefore, frequencies below approximately 5 kHz are in the passband.

---

## Filter Parameters

| Parameter              |           Value |
| ---------------------- | --------------: |
| Sampling frequency     |          70 kHz |
| Cutoff frequency       |           5 kHz |
| Filter order           |              50 |
| Number of coefficients |              51 |
| Filter type            |    Low-Pass FIR |
| Input frequencies      | 1 kHz and 3 kHz |

---

## Normalized Cutoff Frequency

MATLAB's `fir1()` uses a normalized cutoff frequency based on the Nyquist frequency.

The Nyquist frequency is:

$$
f_N=\frac{f_s}{2}
$$

For this project:

$$
f_N=\frac{70000}{2}=35000\,Hz
$$

The normalized cutoff frequency is:

$$
W_n=\frac{f_c}{f_s/2}
$$

$$
W_n=\frac{5000}{35000}
$$

$$
\boxed{W_n\approx0.1429}
$$

---
## Why Use `myfirfilter()`?

Instead of directly using:

```matlab
y = filter(b,1,x);
```

this project implements the FIR filtering operation manually.

This makes the implementation useful for understanding:

* FIR filter equations
* Delay operations
* Coefficient multiplication
* Accumulation
* Nested loops
* Digital filter implementation
---
RESULT :
For specific Sampling frequency , Cutoff frequency , and Filter order used - the output is as below: 
<img width="913" height="604" alt="image" src="https://github.com/user-attachments/assets/99470c4b-43a7-473f-88f9-50c6a8ff79bc" />

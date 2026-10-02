# Convolution Using FFT and IFFT 

## Overview

This project demonstrates **linear convolution using the Fast Fourier Transform (FFT) and Inverse Fast Fourier Transform (IFFT)** in MATLAB.

Instead of calculating convolution directly in the time domain, the input sequences are transformed into the **frequency domain** using FFT. Their frequency-domain representations are multiplied, and the result is converted back to the time domain using IFFT.

This implementation demonstrates the **Convolution Theorem** and shows how convolution can be performed using frequency-domain processing.

---

## Objective

* To implement linear convolution using FFT and IFFT.
* To understand the relationship between convolution and Fourier transforms.
* To demonstrate frequency-domain multiplication.
* To understand the importance of zero-padding.
* To visualize the input sequences and convolution output.

---

## Theory

For two discrete-time sequences:

$$
x[n] \quad \text{and} \quad h[n]
$$

their linear convolution is:

$$
y[n] = x[n] * h[n]
$$

According to the **Convolution Theorem**:

$$
\boxed{y[n] = IFFT\{FFT(x[n]) \times FFT(h[n])\}}
$$

Therefore, the process can be represented as:

```text
       FFT                    Multiplication              IFFT
x[n] ───────> X[k] ───────────────┐
                                  ├──> Y[k] ───────> y[n]
h[n] ───────> H[k] ───────────────┘
       FFT
```

### Why Zero Padding?

For linear convolution, the required FFT length is:

$$
L = M + N - 1
$$

where:

* `M` = length of `x[n]`
* `N` = length of `h[n]`
* `L` = length of the linear convolution result

The sequences are zero-padded to this length before performing the FFT.

This prevents the result from becoming an unwanted circular convolution.

---
## Important MATLAB Functions

| Function    | Purpose                                       |
| ----------- | --------------------------------------------- |
| `fft()`     | Computes the Fast Fourier Transform           |
| `ifft()`    | Computes the Inverse Fast Fourier Transform   |
| `length()`  | Finds the length of a sequence                |
| `real()`    | Removes negligible imaginary numerical errors |
| `stem()`    | Plots discrete-time sequences                 |
| `subplot()` | Displays multiple plots                       |

---

## Why FFT-Based Convolution?

Direct convolution requires a large number of multiplication and addition operations for long sequences.

FFT-based convolution provides an efficient approach:

```text
Time Domain
     │
     │ Direct Convolution
     ▼
  x[n] * h[n]

Frequency Domain
     │
     ├── FFT
     ├── Multiplication
     └── IFFT
     ▼
  x[n] * h[n]
```

For long sequences, FFT-based techniques are widely used in practical digital signal processing systems.

---
RESULT/OUTPUT:
Random Values taken :
<img width="555" height="122" alt="image" src="https://github.com/user-attachments/assets/f899168f-4c89-4957-a72e-50db1b0d0cb4" />
Output:
<img width="950" height="591" alt="image" src="https://github.com/user-attachments/assets/e1a07c94-f661-4d04-b8aa-65240c688bdc" />




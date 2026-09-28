# Linear Convolution in Time Domain Using MATLAB

## Overview

This project implements **linear convolution of two discrete-time sequences** in MATLAB using the **shifting and multiplication method**.

Instead of using MATLAB's built-in `conv()` function, the convolution is calculated manually by:

1. Zero-padding the input sequences.
2. Reversing one sequence.
3. Shifting the reversed sequence.
4. Performing element-wise multiplication.
5. Adding the products to obtain each output sample.

This demonstrates the fundamental process of **linear convolution in the time domain**.

---

## Objective

To implement and visualize the **linear convolution** of two discrete-time sequences using MATLAB without directly using the built-in `conv()` function.

---

## Theory

For two discrete-time sequences:

$$
x(n) \quad \text{and} \quad h(n)
$$

their linear convolution is defined as:

$$
y(n)=x(n)*h(n)
$$

$$
y(n)=\sum_{k=-\infty}^{\infty}x(k)h(n-k)
$$

For finite-length sequences:

* Length of `x(n)` = **M**
* Length of `h(n)` = **N**

The length of the convolution output is:

$$
L_y=M+N-1
$$

### Shifting Method

The convolution process consists of:

```text
h(k)
 ↓
Reverse → h(-k)
 ↓
Shift → h(n-k)
 ↓
Multiply with x(k)
 ↓
Add all products
 ↓
y(n)
```
---



## 📈 Output

The MATLAB program displays three plots:

1. **Input Sequence 1 — `x(n)`**
2. **Input Sequence 2 — `h(n)`**
3. **Linear Convolution — `y(n)`**

**The convolution output has the characteristic triangular shape for two identical rectangular sequences.**
**and it is trapezoidal for two non-identical rectangular sequences.**

<img width="968" height="606" alt="image" src="https://github.com/user-attachments/assets/ac61d11d-d259-4e01-9ada-3f721825394c" />


---


## Applications

Linear convolution is widely used in:

* Digital Signal Processing (DSP)
* Digital filters
* Communication systems
* Audio and speech processing
* Image processing
* System response analysis

---


This project was implemented as part of learning and practicing **Digital Signal Processing using MATLAB**.

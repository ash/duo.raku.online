---
title: Exercise ’A native array‘
---

{% include menu.html %}

## Problem

The natural use of a sized native type is an array of bytes. Such an array uses little memory. Declare a `uint8` array with the values `100`, `200` and `255`. Each of them fits in a single byte. Then print the sum of its elements.

Note that each element stays in the range `0..255`, but the sum can go higher. This is because `.sum` returns a normal `Int`.

## Example

The program prints:

```
555
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

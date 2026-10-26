---
title: Exercise ’A native array‘
---

{% include menu.html %}

## Problem

Native types with a fixed size are good for arrays of bytes. Such arrays use little memory. Make a `uint8` array with the values `100`, `200`, and `255`. Each value fits in one byte. Print the sum of the elements.

The elements stay in the range `0..255`. But their sum can be bigger. `.sum` returns a normal `Int`.

## Example

The program prints:

```
555
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

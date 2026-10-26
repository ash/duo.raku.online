---
title: Exercise ’Classify the size‘
---

{% include menu.html %}

## Problem

Write three multi-subroutines with the name `size`. Each of them takes an `Int`. They return `'small'`, `'medium'`, or `'large'`. Look only at the *size* of the number and ignore its sign. Use the absolute value of the number. If it is below `10`, the number is small. If it is below `100`, the number is medium. Any other number is large. Use a `where` clause in the first two candidates. The third candidate takes all other numbers.

Print the result of `size(7)`, `size(30)`, and `size(-250)`.

## Example

The program prints:

```
small
medium
large
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

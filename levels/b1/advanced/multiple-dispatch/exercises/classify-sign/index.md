---
title: Exercise ’Classify the size‘
---

{% include menu.html %}

## Problem

Write three multi-subroutines called `size`. Each one takes an `Int` and returns `'small'`, `'medium'`, or `'large'`. Decide by the *size* of the number and ignore its sign. If the absolute value is below `10`, the number is small. If it is below `100`, it is medium, and anything else is large. Use a `where` clause on the first two candidates. Let the third one catch everything else.

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

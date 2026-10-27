---
title: Exercise ’Soft reciprocal‘
---

{% include menu.html %}

## Problem

Write a subroutine `reciprocal` that returns `1` divided by its argument. But when the argument is `0`, it should use `fail` with the message `no reciprocal of zero`.

Print the result of `reciprocal(4)`. Then print the result of `reciprocal(0)`. Instead of checking `.defined` yourself, use the `//` operator. It should give the string `undefined` when the call fails.

## Example

The program prints:

```
0.25
undefined
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

---
title: Exercise ’A writable parameter‘
---

{% include menu.html %}

## Problem

Normally, the parameters of a subroutine are read-only. So a routine cannot change the variable of the caller. The trait `is rw` removes this limit.

Write a subroutine `double`. It has one parameter with the trait `is rw`. The subroutine doubles the parameter itself: `$n *= 2`. Call `double` with a variable that holds `21`. Then print the variable. It is now `42`.

## Example

The program prints:

```
42
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

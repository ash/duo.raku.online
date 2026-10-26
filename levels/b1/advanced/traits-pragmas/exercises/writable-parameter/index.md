---
title: Exercise ’A writable parameter‘
---

{% include menu.html %}

## Problem

By default, the parameters of a subroutine are read-only. This means that a routine cannot change the caller’s variable. The `is rw` trait removes this limit.

Write a subroutine `double` with one parameter that is marked `is rw`. The subroutine doubles the parameter in place with `$n *= 2`. Call it with a variable that holds `21`. Then print the variable to show that it has become `42`.

## Example

The program prints:

```
42
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

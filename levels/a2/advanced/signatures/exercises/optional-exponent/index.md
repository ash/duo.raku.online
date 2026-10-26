---
title: Exercise ’An optional exponent‘
---

{% include menu.html %}

## Problem

Write a subroutine `power`. It has a required parameter `$base` and an **optional** parameter `$exp`. If the caller gives the exponent, raise the base to it. If the exponent is not there, square the base. For this, use the defined-or operator `//` to give `2`.

Call it two times. First, give only a base. Then give a base and an exponent.

## Example

The program prints:

```
25
125
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

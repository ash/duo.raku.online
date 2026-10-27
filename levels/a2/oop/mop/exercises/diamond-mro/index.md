---
title: Exercise ’A diamond of classes‘
---

{% include menu.html %}

## Problem

Make a class `A`. Then make `B` and `C`. Both of them inherit from `A`. At the end, make `D`. It inherits from both `B` and `C`. Print the method resolution order of `D`. Print it as a list of type names. Raku looks for a method in this order.

## Example

The program prints:

```
(D B C A Any Mu)
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

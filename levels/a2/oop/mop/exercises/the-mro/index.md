---
title: Exercise ’The method resolution order‘
---

{% include menu.html %}

## Problem

Make a chain of three classes. The first is `A`. Then `B` inherits from `A`. Then `C` inherits from `B`. Print the method resolution order of `C`. Print it as a list of type names. Raku looks for a method in this order.

## Example

The program prints:

```
(C B A Any Mu)
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

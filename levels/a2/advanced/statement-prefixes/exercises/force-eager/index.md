---
title: Exercise ’Force eager evaluation‘
---

{% include menu.html %}

## Problem

The `eager` prefix does the opposite of `lazy`. It makes Raku produce the whole list at once. Then the list is not lazy any more. Show the difference with `.is-lazy`.

First, print if the infinite range `1 .. Inf` is lazy. Then print if `eager 1..3` is lazy. Last, print if `lazy 1..3` is lazy. The results must be `True`, `False`, `True`.

## Example

The program prints:

```
True
False
True
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

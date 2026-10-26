---
title: Exercise ’Force eager evaluation‘
---

{% include menu.html %}

## Problem

The `eager` prefix does the opposite of `lazy`. It makes Raku produce the whole list, so the list is no longer lazy. Show the difference with `.is-lazy`.

Print whether the infinite range `1 .. Inf` is lazy. Then print whether `eager 1..3` is lazy, and finally whether `lazy 1..3` is lazy. The results should be `True`, `False`, `True`.

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

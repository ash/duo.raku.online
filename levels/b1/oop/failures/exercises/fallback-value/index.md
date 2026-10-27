---
title: Exercise ’A fallback value‘
---

{% include menu.html %}

## Problem

Write a subroutine `get` that returns its argument. But when the argument is `0`, it should call `fail` with the message `bad`.

Print the result of `get(5)` and then of `get(0)`. Use the defined-or operator `//` to give a fallback value of `default`.

## Example

The program prints:

```
5
default
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

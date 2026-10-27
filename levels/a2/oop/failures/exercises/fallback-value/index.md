---
title: Exercise ’A fallback value‘
---

{% include menu.html %}

## Problem

Write a subroutine `get`. It returns its argument. But if the argument is `0`, it calls `fail`. The message is `bad`.

Print the result of `get(5)`. Then print the result of `get(0)`. Use the defined-or operator `//` with the fallback value `default`. The `//` operator gives this value when the result is undefined.

## Example

The program prints:

```
5
default
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

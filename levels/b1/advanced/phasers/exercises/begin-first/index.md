---
title: Exercise ’Begin first‘
---

{% include menu.html %}

## Problem

A `BEGIN` phaser is more than a block that runs early. It is also an *expression*. Its value is calculated once, at compile time. Then it stays fixed in the program.

Use `BEGIN { 2 + 3 }` to set the first value of a variable `$compiled`, and then print it. The `2 + 3` is calculated while the program is still compiling. But the stored value works perfectly well at run time.

## Example

The program prints:

```
5
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

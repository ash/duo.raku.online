---
title: Exercise ’Traffic lights‘
---

{% include menu.html %}

## Problem

Define an enum `Light` with the constants `red`, `amber`, and `green`. Keep them in this order. Declare a variable with the enum as its type: `my Light $current`. Set it to `red`. Print the light and the number behind it. Use the form `red is 0`.

Then **change the light two times**. First, set `$current` to `amber`. Then set it to `green`. After each change, print it in the same way. So the light goes `red` → `amber` → `green`.

Maybe you think that `$current++` moves to the next light by itself. Try it and see what happens.

## Example

The program prints:

```
red is 0
amber is 1
green is 2
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

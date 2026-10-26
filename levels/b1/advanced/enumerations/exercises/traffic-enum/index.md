---
title: Exercise ’Traffic lights‘
---

{% include menu.html %}

## Problem

Define an enum `Light` with the constants `red`, `amber` and `green`, in this order. Declare a variable with the enum as its type, `my Light $current`, and set it to `red`. Print the light and the number behind it, like this: `red is 0`.

Then **change the light a couple of times**. Assign `amber` to `$current`, and then `green`. After each change, print it in the same way. So you go `red` → `amber` → `green`.

You might think that `$current++` moves to the next light by itself. Try it and see what happens.

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

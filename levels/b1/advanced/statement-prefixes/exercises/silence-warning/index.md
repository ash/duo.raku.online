---
title: Exercise ’Silence a warning‘
---

{% include menu.html %}

## Problem

`quietly` hides warnings, and like `do`, it returns the value of its block. Declare a variable for a name without a value. Then build a greeting `"Hello, " ~ $name ~ "!"` inside a `quietly` block. This hides the “uninitialized value” warning. Assign the block’s value to `$greeting` and print it.

## Example

The program prints:

```
Hello, !
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

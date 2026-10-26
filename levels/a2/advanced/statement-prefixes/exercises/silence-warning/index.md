---
title: Exercise ’Silence a warning‘
---

{% include menu.html %}

## Problem

`quietly` hides warnings. Like `do`, it gives back the value of its block. Create a variable for a name, but give it no value. Then build a greeting `"Hello, " ~ $name ~ "!"` inside a `quietly` block. So the “uninitialized value” warning stays hidden. Assign the value of the block to `$greeting` and print it.

## Example

The program prints:

```
Hello, !
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

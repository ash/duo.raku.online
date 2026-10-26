---
title: Exercise ’The order of ENDs‘
---

{% include menu.html %}

## Problem

A program can have more than one `END` phaser. In that case, they run in the **reverse** order of how they were written. The last one that you declare runs first: last in, first out.

Write two `END` phasers. The first prints `first END`, and the second prints `second END`. After them, add a simple `say 'body'`. Predict the order of the output, and then get the same output with your program.

## Example

The program prints:

```
body
second END
first END
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

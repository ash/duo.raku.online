---
title: Exercise ’The order of ENDs‘
---

{% include menu.html %}

## Problem

A program can have more than one `END` phaser. Then they run in **reverse** order. The last one in the code runs first. People call this “last in, first out”.

Write two `END` phasers. The first one prints `first END`. The second one prints `second END`. After them, write a simple `say 'body'`. What is the order of the output? Guess it first. Then get this output with your program.

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

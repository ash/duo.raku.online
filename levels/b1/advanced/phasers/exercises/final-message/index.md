---
title: Exercise ’Final message‘
---

{% include menu.html %}

## Problem

An `END` phaser runs after the main code. So it sees the *final* state of your variables. This makes it perfect for a summary.

Declare a counter `$count` set to `0`. Write an `END` phaser that prints `processed $count items`, and place it before the main code. Then, in the main body, increase the counter three times with a loop. The summary should show the final count. It should not show the value at the point where the phaser is written.

## Example

The program prints:

```
processed 3 items
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

---
title: Exercise ’Final message‘
---

{% include menu.html %}

## Problem

An `END` phaser runs after the main code. So it sees the *final* values of your variables. This makes it great for a summary.

Make a counter `$count` with the value `0`. Write an `END` phaser that prints `processed $count items`. Put the phaser before the main code. Then, in the main body, add 1 to the counter three times. Use a loop for this. The summary must show the last value of the counter. It must not show the old value from the line of the phaser.

## Example

The program prints:

```
processed 3 items
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

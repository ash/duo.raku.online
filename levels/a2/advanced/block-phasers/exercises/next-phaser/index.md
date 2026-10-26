---
title: Exercise ’After each step‘
---

{% include menu.html %}

## Problem

The `NEXT` phaser runs at the *end* of each round of a loop. This is a good time to show the progress.

Keep a growing total in `$sum`. It starts at `0`. Loop over `1..3`. In each round, first add the current number to `$sum`. Use a `NEXT` phaser to print `sum so far: $sum` after each round.

Be careful with the order. The `NEXT` phaser runs after the body. So the total that it shows *includes* the current number.

## Example

The program prints:

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

---
title: Exercise ’After each step‘
---

{% include menu.html %}

## Problem

The `NEXT` phaser runs at the *end* of each pass of a loop. This is a good moment to report progress.

Keep a total in `$sum` that grows as the loop runs. It starts at `0`. Loop over `1..3`, and on each pass, first add the current number to `$sum`. Then use a `NEXT` phaser to print `sum so far: $sum` after each pass.

Pay attention to the order. The `NEXT` phaser runs after the body. So the total that it shows *includes* the current number.

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

---
title: Exercise ’Handle and continue‘
---

{% include menu.html %}

## Problem

Loop over the three items `ok`, `bad`, and `ok`. For each item, run a block that prints `processed <item>`. But when the item is `bad`, the block should do `die 'boom'`. Put a `CATCH` phaser inside the block. It should report a failing item as `skipped (<item>): <message>`. Then the loop goes on to the next item instead of stopping.

## Example

The program prints:

```
processed ok
skipped (bad): boom
processed ok
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

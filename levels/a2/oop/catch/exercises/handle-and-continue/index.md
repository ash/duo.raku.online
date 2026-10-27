---
title: Exercise ’Handle and continue‘
---

{% include menu.html %}

## Problem

Write a loop over three items: `ok`, `bad`, and `ok`. For each item, run a block. The block prints `processed <item>`. But for the item `bad`, it does `die 'boom'`. Put a `CATCH` phaser inside the block. It catches the error. For a failing item, it prints `skipped (<item>): <message>`. Then the loop goes on to the next item. It does not stop.

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

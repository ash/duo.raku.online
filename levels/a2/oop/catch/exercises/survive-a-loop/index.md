---
title: Exercise ’Survive a loop‘
---

{% include menu.html %}

## Problem

Write a loop over the numbers `1`, `2`, and `3`. For each number, print `ok: <n>`. But for the number `2`, do `die "bad: 2"`. Add a `CATCH` phaser inside the body of the loop. It catches the error and prints `caught: <message>`. Then one bad round does not stop the whole loop.

## Example

The program prints:

```
ok: 1
caught: bad: 2
ok: 3
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

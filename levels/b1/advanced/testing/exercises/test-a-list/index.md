---
title: Exercise ’Plan two checks‘
---

{% include menu.html %}

## Problem

Write a test file that uses `plan`, not `done-testing`. With `plan`, say at the start that the file has exactly two checks. Make these checks:

1. With `is-deeply`, check that sorting the list `3, 1, 2` gives `[1, 2, 3]`.
1. With `is`, check that `10 % 3` equals `1`.

Give each check a short description that you choose yourself.

## Example

If the descriptions are `sorted` and `remainder`, the program prints:

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

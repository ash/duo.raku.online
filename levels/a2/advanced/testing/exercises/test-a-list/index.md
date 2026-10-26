---
title: Exercise ’Plan two checks‘
---

{% include menu.html %}

## Problem

Write a test file. Use `plan`, not `done-testing`. With `plan`, say at the start that the file has exactly two checks. Make these two checks:

1. With `is-deeply`, check that the list `3, 1, 2` gives `[1, 2, 3]` after sorting.
1. With `is`, check that `10 % 3` is equal to `1`.

Write your own short description for each check.

## Example

Let the descriptions be `sorted` and `remainder`. Then the program prints:

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

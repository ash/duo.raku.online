---
title: Exercise ’Two exception types‘
---

{% include menu.html %}

## Problem

Make two custom exception classes, `TooSmall` and `TooBig`. These are classes for your own errors. Each class inherits from `Exception`. The `message` method of `TooSmall` returns `too small`. The `message` method of `TooBig` returns `too big`.

Write a loop over the two types. For each type, throw an exception of this type. Each exception has its own block. Add a `CATCH` phaser with a `when` branch for each type. For `TooSmall`, it prints `small`. For `TooBig`, it prints `big`. So you see that both branches run.

## Example

The program prints:

```
small
big
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

---
title: Exercise ’Two exception types‘
---

{% include menu.html %}

## Problem

Define two custom exception classes, `TooSmall` and `TooBig`. Each of them inherits from `Exception`. Their `message` methods return `too small` and `too big`, in that order.

Loop over the two types. For each one, throw an exception of that type inside its own block. Use a `CATCH` phaser with a `when` branch for each type. It prints `small` for `TooSmall` and `big` for `TooBig`. This way, you can see that both branches are used.

## Example

The program prints:

```
small
big
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

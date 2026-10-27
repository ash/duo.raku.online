---
title: Exercise ’Match the type‘
---

{% include menu.html %}

## Problem

Built-in errors have their own exception types, and you can match on them. Write a block that calculates `1 / 0` and tries to use the result. This throws an `X::Numeric::DivideByZero`. In the `CATCH` phaser of the block, use `when X::Numeric::DivideByZero` to match this exact type. Then print `cannot divide by zero`.

## Example

The program prints:

```
cannot divide by zero
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

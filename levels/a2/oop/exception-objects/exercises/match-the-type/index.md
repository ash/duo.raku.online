---
title: Exercise ’Match the type‘
---

{% include menu.html %}

## Problem

Each built-in error has its own exception type. You can match these types. Write a block that calculates `1 / 0`. Then the block tries to use the result. This throws an `X::Numeric::DivideByZero`. Add a `CATCH` phaser to the block. In it, use `when X::Numeric::DivideByZero`. This matches exactly this type. Then print `cannot divide by zero`.

## Example

The program prints:

```
cannot divide by zero
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

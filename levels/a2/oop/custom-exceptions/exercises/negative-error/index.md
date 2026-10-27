---
title: Exercise ’A negative error‘
---

{% include menu.html %}

## Problem

Make a custom exception class `Negative`. This is a class for your own errors. It inherits from `Exception`. It has an attribute `n`. Its method `message` returns `<n> is negative`.

Write a subroutine `check($n)`. If its argument is less than zero, it throws a `Negative`. This `Negative` holds the `n`. Otherwise, the subroutine returns the argument. Then call `check(-5)` inside a block. Add a `CATCH` phaser with `when Negative`. It prints the message of the exception.

At the end, after the block, throw one more `Negative`. Its `n` is `-10`. No `CATCH` is there to catch it. This shows what happens then. The exception ends the program.

## Example

The program prints:

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

---
title: Exercise ’A negative error‘
---

{% include menu.html %}

## Problem

Define a custom exception class called `Negative`. It inherits from `Exception` and has an attribute `n`. Its `message` method returns `<n> is negative`.

Write a subroutine `check($n)`. When its argument is below zero, it throws a `Negative` that carries this `n`. Otherwise, it returns the argument. Then, in a block, call `check(-5)`. Use a `CATCH` phaser with `when Negative` to print the message of the exception.

Finally, after the block, throw another `Negative` with `n` set to `-10`. No `CATCH` protects this place. This shows that such an exception ends the program.

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

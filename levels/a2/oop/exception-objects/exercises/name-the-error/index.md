---
title: Exercise ’Name the error‘
---

{% include menu.html %}

## Problem

Write a subroutine `risky`. It does `die 'sub failed'`. Then call `risky` inside a block with a `CATCH` phaser. First, the `CATCH` prints the type name of the exception, with `.^name`. Then it prints its message, with `.message`. This shows one more thing about `CATCH`. It also handles exceptions from code that the block *calls*. The `die` does not have to be in the block itself.

## Example

The program prints:

```
X::AdHoc
sub failed
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

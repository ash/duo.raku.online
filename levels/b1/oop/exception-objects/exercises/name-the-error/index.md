---
title: Exercise ’Name the error‘
---

{% include menu.html %}

## Problem

Write a subroutine `risky` that does `die 'sub failed'`. Then call it from inside a block that has a `CATCH` phaser. The `CATCH` should print the type name of the exception with `.^name`. Then it should print its message with `.message`. This shows that `CATCH` handles exceptions from code that the block *calls*. The `die` does not have to be written directly in the block.

## Example

The program prints:

```
X::AdHoc
sub failed
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

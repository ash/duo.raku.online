---
title: Exercise ’Clean up on leave‘
---

{% include menu.html %}

## Problem

The real strength of `LEAVE` is that it runs *however* the block is left. This includes an early `return`.

Write a subroutine `work` whose body starts with a `LEAVE` phaser that prints `Cleanup`. Then, still inside the subroutine, print `Working` and `return` straight away. Put a line `say 'never reached'` after the `return`. Call the subroutine. The early `return` skips the last line, but `Cleanup` is still printed.

## Example

The program prints:

```
Working
Cleanup
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

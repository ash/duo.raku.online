---
title: Exercise ’Clean up on leave‘
---

{% include menu.html %}

## Problem

The best thing about `LEAVE` is this. It runs *however* the program leaves the block. It runs even after an early `return`.

Write a subroutine `work`. Its body starts with a `LEAVE` phaser. The phaser prints `Cleanup`. Then, still in the subroutine, print `Working`. After that, use `return` at once. Put a line `say 'never reached'` after the `return`. Call the subroutine. The early `return` skips the last line. But the program still prints `Cleanup`.

## Example

The program prints:

```
Working
Cleanup
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

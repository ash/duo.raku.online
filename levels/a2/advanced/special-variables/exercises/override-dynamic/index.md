---
title: Exercise ’Override the dynamic‘
---

{% include menu.html %}

## Problem

Show how a dynamic variable goes through a routine in the middle. This routine knows nothing about the variable.

Write a subroutine `log-it($msg)`. It prints the message. Before the message, it prints a dynamic variable `$*prefix`. Write a second subroutine, `task`. It only calls `log-it('working')`. It never uses `$*prefix` itself. Then call `task` two times. Each time, call it from inside a block. Each block gives `$*prefix` a different value: first `INFO`, then `DEBUG`.

## Example

The program prints:

```
INFO: working
DEBUG: working
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

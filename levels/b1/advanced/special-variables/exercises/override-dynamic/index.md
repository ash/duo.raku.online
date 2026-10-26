---
title: Exercise ’Override the dynamic‘
---

{% include menu.html %}

## Problem

Show how a dynamic variable passes through a routine in the middle. That routine knows nothing about it.

Write a subroutine `log-it($msg)` that prints the message with a dynamic variable `$*prefix` before it. Write a second subroutine `task` that only calls `log-it('working')`. It never mentions `$*prefix` itself. Then call `task` twice, each time from inside a block. Each block sets `$*prefix` to a different value: first `INFO`, then `DEBUG`.

## Example

The program prints:

```
INFO: working
DEBUG: working
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

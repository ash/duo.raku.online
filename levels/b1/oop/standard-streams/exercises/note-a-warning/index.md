---
title: Exercise ’Note a warning‘
---

{% include menu.html %}

## Problem

A program works with a value, and the value turns out to be negative. If the value is below zero, use `note` to send a warning to standard error. Use `say` to send the real result, the absolute value, to standard output. Use the value `-3`.

## Example

Both lines appear on the screen:

```
Warning: the value is negative
3
```

If you throw away standard error, only the result is left:

```
$ raku note-a-warning.raku 2>/dev/null
3
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

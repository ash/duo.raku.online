---
title: Exercise ’Note a warning‘
---

{% include menu.html %}

## Problem

A program works with a value. The value is negative. If the value is below zero, send a warning to standard error. Use `note` for this. Then send the real result to standard output with `say`. The result is the absolute value of the number. This is the number without its minus sign. Use the value `-3`.

## Example

You see both lines on the screen:

```
Warning: the value is negative
3
```

Here, we throw away standard error. Only the result is left:

```
$ raku note-a-warning.raku 2>/dev/null
3
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

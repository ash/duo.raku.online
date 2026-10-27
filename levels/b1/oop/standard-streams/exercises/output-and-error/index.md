---
title: Exercise ’Output and error‘
---

{% include menu.html %}

## Problem

A program adds up the list of numbers `3, 5, 7` in a loop. On each round, send the current running total to standard error as a progress message. After the loop, send the final result to standard output. Use the stream handles directly.

This separation is important. You can save the result or pass it on to another program. Meanwhile, the progress messages stay out of the way on standard error.

## Example

When you run the program, both streams appear on the screen. First come the running totals, and then the final result:

```
running total: 3
running total: 8
running total: 15
15
```

But if you throw away standard error, only the real result is left:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

---
title: Exercise ’Output and error‘
---

{% include menu.html %}

## Problem

A program adds up the list of numbers `3, 5, 7` in a loop. On each round, send the sum so far to standard error. This sum is the running total. It is a message about the progress. After the loop, send the final result to standard output. Use the handles of the streams directly.

Why is this important? You can save the result or send it to another program. The progress messages stay on standard error. There, they are not in the way.

## Example

Run the program. You see both streams on the screen. First come the running totals, then the final result:

```
running total: 3
running total: 8
running total: 15
15
```

But now we throw away standard error. Only the real result is left:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

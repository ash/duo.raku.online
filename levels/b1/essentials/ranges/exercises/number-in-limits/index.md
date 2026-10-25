---
title: 'Exercise: If the number is within the limits'
---

{% include menu.html %}

## Problem

Write a program that asks the user to enter three numbers: `$begin`, `$end`, and `$n`. It prints `True` if `$n` is in the range `[$begin, $end)`, or `False` if not. This range includes `$begin` but excludes `$end`.

You can assume that the entered numbers meet the condition `$begin < $end + 1`. But do not add code to check it.

## Example

Below, you can see a possible output of the program for both cases:

```console
$ raku number-in-limits.raku
From (including): 10
To (excluding): 20
What is the number? 15
True

$ raku number-in-limits.raku
From (including): 10
To (excluding): 20
What is the number? 30
False
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

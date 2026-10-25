---
title: 'Exercise: If the number is within the limits'
---

{% include menu.html %}

## Problem

Write a program. It asks the user for three numbers: `$begin`, `$end`, and `$n`. Then it checks if `$n` is in the range `[$begin, $end)`. This range has `$begin` in it, but not `$end`. The program prints `True` or `False`.

The numbers meet this condition: `$begin < $end + 1`. You can be sure of this. Do not add code to check it.

## Example

Here is a possible output of the program in both cases:

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

---
title: 'Exercise: Seen before?'
---

{% include menu.html %}

## Problem

Write a program with a loop. The loop does these things:

1. Ask the user for a word.
2. If the user entered this word once before, print `Seen!`.
3. If the user entered it more than once before, print `Seen 2 times!`, and so on.
3. Repeat the loop.

## Example

Here is an example of using the program:

```console
$ raku seen-before.raku
Word: I
Word: never
Word: saw
Word: a
Word: saw
Seen!
Word: that
Word: saw
Seen 2 times!
True
Word: as
Word: that
Seen!
Word: saw
Seen 3 times!
True
Word: sawed
Word: ^C
```

To stop the program, press `Ctrl+C`.

## Solution

✅ [See the solution](solution)

{% include nav.html %}

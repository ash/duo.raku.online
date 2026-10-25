---
title: 'Exercise: Seen before?'
---

{% include menu.html %}

## Problem

Write a program with a loop that does the following:

1. Ask the user to enter a word.
2. If the program has already seen the word once, print `Seen!`.
3. If it has seen the word more than once, print `Seen 2 times!` and so on.
3. Repeat the loop.

## Example

This is how working with the program may look:

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

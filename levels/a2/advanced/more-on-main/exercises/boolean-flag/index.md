---
title: Exercise ’A command-line flag‘
---

{% include menu.html %}

## Problem

A named parameter of `MAIN` can have the type `Bool`. Then it becomes a **flag**. A flag is on or off. If you write `--flag`, it is `True`. If you leave it out, it keeps its default value. Write a program with `MAIN`. It takes `Bool :$shout = False`. With the flag, the program prints `HELLO`. Without the flag, it prints `hello`.

## Example

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

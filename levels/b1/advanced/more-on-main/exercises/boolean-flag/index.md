---
title: Exercise ’A command-line flag‘
---

{% include menu.html %}

## Problem

A named `Bool` parameter of `MAIN` becomes a **flag** that is either on or off. Writing `--flag` sets it to `True`, and leaving it out keeps its default value. Write a program whose `MAIN` takes `Bool :$shout = False`. It should print `HELLO` when the flag is set, and `hello` when it is not.

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

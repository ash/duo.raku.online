---
title: Exercise ’A typed MAIN‘
---

{% include menu.html %}

## Problem

Raku also checks the type of a `MAIN` parameter before the body runs. Write a program whose `MAIN` takes one `Int $n` and prints `$n` times two. If the argument is not a valid integer, the signature does not match. Then Raku prints the usage message instead, so you get the check for free.

## Example

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

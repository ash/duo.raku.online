---
title: Exercise ’A typed MAIN‘
---

{% include menu.html %}

## Problem

A parameter of `MAIN` can have a type. Raku also checks this type before the body runs. Write a program with `MAIN`. It takes one parameter, `Int $n`. It prints `$n` times two. What if the argument is not a correct integer? Then the signature does not match. Raku prints the usage message instead. So Raku checks the argument for you, and you do no extra work.

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

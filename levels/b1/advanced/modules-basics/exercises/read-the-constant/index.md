---
title: Exercise ’Read the constant‘
---

{% include menu.html %}

## Problem

You have a module in a file `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Write a program that loads this module with `need`, not `use`. It should print the value of `$pi`. Remember that `need` does not import names. So you reach the variable through the name of the module.

## Example

```console
$ raku -I. read-pi.raku
3.14
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

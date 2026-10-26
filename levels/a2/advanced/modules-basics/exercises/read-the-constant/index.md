---
title: Exercise ’Read the constant‘
---

{% include menu.html %}

## Problem

Here is a module in the file `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Write a program. It loads this module with `need`, not with `use`. Then it prints the value of `$pi`. Remember: `need` does not import names. So you get to the variable through the name of the module.

## Example

```console
$ raku -I. read-pi.raku
3.14
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

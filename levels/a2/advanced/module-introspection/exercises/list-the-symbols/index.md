---
title: Exercise ’List the symbols‘
---

{% include menu.html %}

## Problem

Here is a module in the file `Circle.rakumod`. It has two `our` variables:

```raku
unit module Circle;

our $pi = 3.14;
our $tau = 6.28;
```

Write a program. It uses the module. First, it prints the number of names in the module’s package. Then it prints the names. They must be in alphabetical order.

## Example

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

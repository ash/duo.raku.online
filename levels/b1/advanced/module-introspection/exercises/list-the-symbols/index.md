---
title: Exercise ’List the symbols‘
---

{% include menu.html %}

## Problem

You have a module in the file `Circle.rakumod`, which defines two `our` variables:

```raku
unit module Circle;

our $pi = 3.14;
our $tau = 6.28;
```

Write a program that uses the module. First, it prints how many names the package of the module defines. Then it prints the names themselves in alphabetical order.

## Example

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

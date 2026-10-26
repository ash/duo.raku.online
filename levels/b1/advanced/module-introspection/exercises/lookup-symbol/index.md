---
title: Exercise ’Look up a symbol‘
---

{% include menu.html %}

## Problem

Besides listing the names of a package, you can reach a single name. To do this, use the name as a key in the stash of the package. Then the name does not have to be fixed in the code. Here is a module, `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Write a separate program that loads the module and prints the value of `$pi`. It should find `$pi` in the stash with `Circle::{'$pi'}`. It should not use the qualified name `$Circle::pi`.

## Example

If you run it with the module on the search path, the program prints:

```console
$ raku -I. lookup.raku
3.14
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

---
title: Exercise ’Look up a symbol‘
---

{% include menu.html %}

## Problem

You can list the names of a package. You can also get one name in a different way. Use the name as a key in the stash of the package. The stash is its table of names. With a key, the program can choose the name while it runs. Here is a module, `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Write a separate program. It loads the module. Then it prints the value of `$pi`. It must find `$pi` in the stash with `Circle::{'$pi'}`. Do not use the full name `$Circle::pi`.

## Example

Run the program with the module on the search path. It prints:

```console
$ raku -I. lookup.raku
3.14
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

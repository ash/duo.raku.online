---
title: Exercise ’Two functions in one module‘
---

{% include menu.html %}

## Problem

Create a module called `Calc` in a file `Calc.rakumod`. It should export two subroutines, `add` and `mul`. They return the sum and the product of their two arguments.

Then write a separate program that uses the module. It should print `add(3, 4)` and `mul(3, 4)`, each on its own line.

## Example

If you run it with the module on the search path, the program prints:

```console
$ raku -I. calc.raku
7
12
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

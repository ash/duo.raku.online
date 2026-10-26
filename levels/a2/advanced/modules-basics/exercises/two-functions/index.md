---
title: Exercise ’Two functions in one module‘
---

{% include menu.html %}

## Problem

Create a module with the name `Calc` in the file `Calc.rakumod`. It exports two subroutines: `add` and `mul`. Each one takes two arguments. `add` returns their sum. `mul` returns their product.

Then write a separate program. It uses the module and prints `add(3, 4)` and `mul(3, 4)`. Each result is on its own line.

## Example

Run the program with the module on the search path. It prints:

```console
$ raku -I. calc.raku
7
12
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

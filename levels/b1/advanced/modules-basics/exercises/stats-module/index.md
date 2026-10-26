---
title: Exercise ’Use a stats module‘
---

{% include menu.html %}

## Problem

You have a module `Stats.rakumod` that exports two subroutines, `total` and `mean`. The `mean` subroutine is built on top of `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Write a separate program that uses this module. For the list `10, 20, 30, 40`, it should print both the total and the mean.

## Example

If you run it with the module on the search path, the program prints:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

---
title: Exercise ’Use a stats module‘
---

{% include menu.html %}

## Problem

Here is a module, `Stats.rakumod`. It exports two subroutines: `total` and `mean`. The subroutine `mean` uses `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Write a separate program. It uses this module. It takes the list `10, 20, 30, 40`. It prints the total and the mean, or average, of this list.

## Example

Run the program with the module on the search path. It prints:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

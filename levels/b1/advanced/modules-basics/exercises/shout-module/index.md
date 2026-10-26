---
title: Exercise ’A shout module‘
---

{% include menu.html %}

## Problem

Create a module called `Shouter` in a file `Shouter.rakumod`. It should export a subroutine `shout` that returns its argument in upper case.

Then write a separate program that uses the module and prints `shout('hi')`.

## Example

If you run it with the module on the search path, the program prints:

```console
$ raku -I. shout.raku
HI
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

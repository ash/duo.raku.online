---
title: Exercise ’A shout module‘
---

{% include menu.html %}

## Problem

Create a module with the name `Shouter` in the file `Shouter.rakumod`. It exports a subroutine `shout`. The subroutine returns its argument in upper case, with capital letters.

Then write a separate program. It uses the module and prints `shout('hi')`.

## Example

Run the program with the module on the search path. It prints:

```console
$ raku -I. shout.raku
HI
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

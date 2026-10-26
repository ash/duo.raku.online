---
title: Exercise ’Load at run time‘
---

{% include menu.html %}

## Problem

You have a module `Greeting.rakumod`, which exports a subroutine `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Load this module with `require` instead of `use`. Then it is loaded at **run time**. `require` does not import names automatically. So you must list the symbol you want, with `require Greeting <&hello>;`. Then call `hello('Sam')` and print the result.

This task also shows what loading at run time is good for. Put the `require` inside a `sub MAIN` with a `--quiet` flag. Then the module is loaded *only* when a greeting is really needed. With `--quiet`, the program prints `Silence.` and never touches the module at all.

## Example

If you run it with the module on the search path, the program prints:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

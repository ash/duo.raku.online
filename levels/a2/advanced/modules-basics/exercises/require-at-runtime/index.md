---
title: Exercise ’Load at run time‘
---

{% include menu.html %}

## Problem

Here is a module, `Greeting.rakumod`. It exports a subroutine `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Load this module with `require`, not with `use`. Then the program loads it at **run time**, while the program runs. `require` does not import names automatically. So list the name that you want, like this: `require Greeting <&hello>;`. Then call `hello('Sam')` and print the result.

Now show why loading at run time is useful. Put the `require` inside a `sub MAIN` with a flag `--quiet`. The module loads *only* when you really want a greeting. With `--quiet`, the program does not touch the module at all. It only prints `Silence.`

## Example

Run the program with the module on the search path. It prints:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

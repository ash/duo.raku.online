---
title: Exercise ’A dynamic variable‘
---

{% include menu.html %}

## Problem

A dynamic variable is written with the `*` twigil. Raku finds it by searching outward through the call stack, not by lexical scope. So the value that a subroutine sees depends on who called it. This lets a block run the code that it calls with a different identity.

1. Declare a dynamic variable `$*user` with the value `'guest'`.
2. Write a subroutine `whoami` that prints `running as ` and then the current `$*user` (for example, `running as guest`). It has no parameters, so it must read `$*user` directly.
3. Call `whoami` once at the top level. It shows `guest`.
4. Then make a block that declares `$*user` again as `'admin'`. Inside it, call the *same* `whoami` again. Now it shows `admin`.

## Example

The program prints:

```
running as guest
running as admin
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

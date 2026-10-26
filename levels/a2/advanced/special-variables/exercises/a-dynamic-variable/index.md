---
title: Exercise ’A dynamic variable‘
---

{% include menu.html %}

## Problem

A dynamic variable has the twigil `*`. Raku looks for it through the call stack, not by lexical scope. So a subroutine can see different values. The value depends on who calls the subroutine. Then a block can make the code it calls run as someone else.

1. Declare a dynamic variable `$*user` with the value `'guest'`.
2. Write a subroutine `whoami`. It prints `running as ` and then the current `$*user`, for example, `running as guest`. It has no parameters. It must read `$*user` directly.
3. Call `whoami` once at the top level. It shows `guest`.
4. Then make a block. In it, declare `$*user` again as `'admin'`. Call the *same* `whoami` there. Now it shows `admin`.

## Example

The program prints:

```
running as guest
running as admin
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}

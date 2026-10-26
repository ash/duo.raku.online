---
title: The solution of ’Reverse and shout‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
say 'raku'.flip.uc;
```

🦋 You can find the source code in the file [reverse-and-shout.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/reverse-and-shout.raku).

## Output

```
UKAR
```

## Comments

1. The methods run from left to right. First `flip` reverses `'raku'` into `'ukar'`, and then `uc` turns it into `'UKAR'`.

1. Each method returns a new string, so you can chain them in one expression.

{% include nav.html %}

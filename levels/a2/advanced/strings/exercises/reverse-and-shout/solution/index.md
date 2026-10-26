---
title: The solution of ’Reverse and shout‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The methods work from left to right. First, `flip` turns `'raku'` into `'ukar'`. Then `uc` turns it into `'UKAR'`.

1. Each method returns a new string. So you can put them in a chain in one expression.

{% include nav.html %}

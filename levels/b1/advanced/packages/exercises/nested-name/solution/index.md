---
title: The solution of ’A nested name‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
module Outer {
    module Inner {
        our $base = 10;
        our sub doubled { $base * 2 }
    }
}

say $Outer::Inner::base;
say Outer::Inner::doubled();
```

🦋 You can find the source code in the file [nested-name.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/nested-name.raku).

## Output

```
10
20
```

## Comments

1. When you put one namespace inside another, you get a longer `::` path. Both the variable and the subroutine are two levels deep, in `Outer::Inner`.

1. The full name `$Outer::Inner::base` reaches the variable. `Outer::Inner::doubled()` reaches the subroutine through the same two levels. A sub name has no sigil. So, unlike the variable, it has no `$` in front.

1. Both members are declared with `our`. That is what makes them visible outside their module. With `my`, they would stay private to `Inner`.

{% include nav.html %}

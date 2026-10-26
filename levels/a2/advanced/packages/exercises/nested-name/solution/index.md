---
title: The solution of ’A nested name‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. Here, one namespace is inside another. This makes a longer `::` path. The variable and the subroutine are two levels deep, in `Outer::Inner`.

1. The full name `$Outer::Inner::base` gets the variable. `Outer::Inner::doubled()` gets the subroutine, through the same two levels. The name of a sub has no sigil. So it has no `$` in front, but the variable has one.

1. Both of them have `our` in front. This makes them visible outside their module. With `my`, they would stay private to `Inner`.

{% include nav.html %}

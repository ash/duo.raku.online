---
title: Assigning a value
---

{% include menu.html %}

The `=` operator puts a new value into a scalar container.

```raku
my $name;
$name = 'Anna';
```

Now you can use the variable. For example, you can print it:

```raku
say $name;
```

## Two or more variables at once

You can assign values to several variables at once. For example, here one statement assigns values to two scalars:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

You must write the parentheses on the left side. You cannot leave them out. On the right side, you can add them too. Then both sides look the same:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}

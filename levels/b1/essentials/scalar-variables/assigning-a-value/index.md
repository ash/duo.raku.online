---
title: Assigning a value
---

{% include menu.html %}

To put a new value into a scalar container, use the `=` operator.

```raku
my $name;
$name = 'Anna';
```

Now you can use the variable, for example, to print it:

```raku
say $name;
```

## Several variables at once

You can assign values to several variables at the same time. For example, this is how you assign two scalars in one statement:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

Note that you cannot leave out the parentheses on the left side. But you can add them on the right side too, so that both sides match:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}

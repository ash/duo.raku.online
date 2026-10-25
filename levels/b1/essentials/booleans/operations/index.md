---
title: Boolean operations
---

{% include menu.html %}

You can use all the standard operations with Boolean values. These are Boolean AND, OR, and exclusive OR (also called XOR):

```raku
say False && True; # AND
say False || True; # OR
say False ^^ True; # XOR
```

The program prints these results:

    False
    True
    True

## Negation

Negation turns a Boolean value into its opposite. To negate a value, use the prefix operator `!`:

```raku
say !False; # True
```

You can store Boolean values in scalar variables:

```raku
my $did = True;
my $didn't = !$did;
```

{% include nav.html %}

---
title: Boolean operations
---

{% include menu.html %}

You can do all the usual operations with Boolean values. They are Boolean AND, OR, and exclusive OR. Exclusive OR is also called XOR:

```raku
say False && True; # AND
say False || True; # OR
say False ^^ True; # XOR
```

The program prints this:

    False
    True
    True

## Negation

Negation gives the opposite Boolean value. For negation, use the prefix operator `!`. A prefix operator goes before the value:

```raku
say !False; # True
```

A scalar variable can keep a Boolean value:

```raku
my $did = True;
my $didn't = !$did;
```

{% include nav.html %}

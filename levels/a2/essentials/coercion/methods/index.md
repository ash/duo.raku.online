---
title: Converting types using type coercion methods
---

{% include menu.html %}

You can convert a value to another type. Another word for this is to _coerce_. To do it, call a method. Its name is the name of the data type. For example, convert a string into an integer:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

Often, you do not need to convert values yourself. Raku does it for you. This code works correctly and as you expect:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "The result is $c."; # The result is 30.
```

The two variables, `$a` and `$b`, contain strings. But the expression adds them with `+`. So Raku converts both strings to integers here. Then `$c` also gets an integer. In the last line, Raku interpolates this variable in a string. For this, Raku turns the number into digit characters.

{% include nav.html %}

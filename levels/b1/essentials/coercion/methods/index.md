---
title: Converting types using type coercion methods
---

{% include menu.html %}

To convert, or _coerce_, a value to another type, call a method. The method has the same name as the data type. For example, convert a string into an integer number:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

In many cases, you do not need to convert values yourself. Raku does that job for you. The following code works correctly and as you would expect:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "The result is $c."; # The result is 30.
```

The variables `$a` and `$b` contain strings. But they are used in a calculation with `+`. At this point, both strings are converted to integers, so `$c` also gets an integer. In the last line, the variable with the integer is interpolated in a string. Raku does what is needed to show the number as digit characters.

{% include nav.html %}

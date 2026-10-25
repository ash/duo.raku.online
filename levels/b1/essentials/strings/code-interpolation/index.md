---
title: Code interpolation in Raku strings
---

{% include menu.html %}

Code interpolation is the next level of interpolation. It lets you put code directly inside a double-quoted string. The code can be simple, or even complex!

The code to interpolate goes between curly braces:

```raku
my $a = 10;
my $b = 20;
say "The sum of $a and $b is {$a + $b}.";
```

The program prints:

```console
$ raku t.raku 
The sum of 10 and 20 is 30.
```

## Variables again

One use of this method is when a variable must be followed by some text. That text could be wrongly read as the rest of the variable's name. To prevent this, put the variable inside curly braces:

```raku
my $how-many = 5;
my $what = 'suit';
say "There are $how-many {$what}s."; # There are 5 suits.
```

Without curly braces, Raku would try to interpolate `$whats`, a variable that does not exist.

{% include nav.html %}

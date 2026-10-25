---
title: Code interpolation in Raku strings
---

{% include menu.html %}

Code interpolation is the next level of interpolation. You can put code right inside a string in double quotes. The code can be simple. It can also be complex!

Write the code between curly braces, `{` and `}`:

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

Here is one use of this method. Sometimes a variable has some text right after it. By mistake, Raku can read this text as part of the name. To stop this, put the variable in curly braces:

```raku
my $how-many = 5;
my $what = 'suit';
say "There are $how-many {$what}s."; # There are 5 suits.
```

Without curly braces, Raku tries to interpolate a variable `$whats`. But there is no such variable.

{% include nav.html %}

---
title: Converting types with prefix operators
---

{% include menu.html %}

Another way to change the type of an object is to use prefix operators. These are operators of just one character. You put them directly before the value (or a variable).

`~` | String coercion
`+` | Numeric coercion
`?` | Boolean coercion

Here is an example that creates a Boolean value from an integer:

```raku
say ?42; # True
```

Converting to a string is similar:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, as "-30" has 3 characters
```

Note that with numeric conversion, the type of the result depends on the number. Compare the following conversions from strings:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

To convert to a Boolean value, you can also use a routine called `so`. It works as a prefix operator or as a method:

```raku
my $value = 42;
say so $value; # True
say $value.so; # True
```

{% include nav.html %}

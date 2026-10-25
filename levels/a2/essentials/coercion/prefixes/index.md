---
title: Converting types with prefix operators
---

{% include menu.html %}

You can also change the type of an object with prefix operators. Each of these operators is only one character. You put it right before a value or a variable.

`~` | Converts to a string
`+` | Converts to a number
`?` | Converts to a Boolean value

Here is an example. It makes a Boolean value from an integer:

```raku
say ?42; # True
```

Converting to a string works in the same way:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, as "-30" has 3 characters
```

Note this about converting to a number. The type of the result can be different. It depends on the number. Compare these conversions from strings:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

To convert to a Boolean value, you can also use `so`. You can use it as a prefix operator. Or you can use it as a method:

```raku
my $value = 42;
say so $value; # True
say $value.so; # True
```

{% include nav.html %}

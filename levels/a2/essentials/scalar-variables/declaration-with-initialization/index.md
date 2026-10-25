---
title: Declaration with initialization
---

{% include menu.html %}

Sometimes you know the value of a new variable from the start. Then you need only one statement. It creates the variable and puts the value in it. This saves one line of code:

```raku
my $name = 'Anna';
say $name;
```

## Two or more variables

You can also create two or more variables and give them values. Write it like this:

```raku
my ($name, $age) = 'Carl', 36;
```

{% include nav.html %}

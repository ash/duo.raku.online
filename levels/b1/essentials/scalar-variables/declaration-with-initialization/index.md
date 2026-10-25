---
title: Declaration with initialization
---

{% include menu.html %}

Sometimes you already know the value when you create a variable. Then you can do both in one statement, which saves a line of code:

```raku
my $name = 'Anna';
say $name;
```

## Several variables

To create several variables and assign values to them, use this form:

```raku
my ($name, $age) = 'Carl', 36;
```

{% include nav.html %}

---
title: Scalar variables
---

{% include menu.html %}

Before you use a variable, you have to announce it. Raku has special words for this, called _declarators_. To declare a variable, write `my` like this:

```raku
my $name;
```

With this line, you have created a new variable, which has no value yet. But the compiler already knows about it. When the same name appears later in the program, the compiler recognises it.

## More than one variable

You can declare two or more variables with one `my` declarator:

```raku
my ($x, $y);
```

{% include nav.html %}

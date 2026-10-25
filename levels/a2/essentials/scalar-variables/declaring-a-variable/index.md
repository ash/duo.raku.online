---
title: Scalar variables
---

{% include menu.html %}

You must announce a variable before you use it. Raku has special words for this. They are called _declarators_. To declare a variable, use `my`, like this:

```raku
my $name;
```

Now you have a new variable. It has no value yet. But the compiler already knows its name. Later, the program uses the same name again. Then the compiler knows which variable it is.

## More than one variable

One `my` can declare two or more variables:

```raku
my ($x, $y);
```

{% include nav.html %}

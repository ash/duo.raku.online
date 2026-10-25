---
title: Ranges
---

{% include menu.html %}

In Raku, ranges create lists of items that follow one after another.

In the simplest case, a range is a list of integers that increase by one. To create a range, use the `..` operator and two values. They set the minimum and maximum values of the range:

```raku
1 .. 5
```

The spaces around the operator are optional. So you can write the same range like this:

```raku
1..5
```

A range is a way to create lists, but it is still a single object. So you can save it in a scalar variable:

```raku
my $r = 1 .. 5;
```

## Not only numbers

Ranges can also use other data types if Raku knows how to increment their values. For example:

```raku
my $letters = 'a' .. 'z';
```

In Raku, ranges are objects of their own data type. The type of the variable `$r` is `Range`.

{% include nav.html %}

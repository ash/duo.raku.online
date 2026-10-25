---
title: Ranges
---

{% include menu.html %}

In Raku, a range makes a list of items. The items go in order, one after another.

In the simplest case, a range is a list of integers. Each integer is 1 more than the one before it. To make a range, use the `..` operator with two values. The first value is the smallest value of the range. The second value is the biggest value:

```raku
1 .. 5
```

You do not need spaces around the operator. So you can also write the same range like this:

```raku
1..5
```

A range makes a list. But the range itself is one object. So you can keep it in a scalar variable:

```raku
my $r = 1 .. 5;
```

## Not only numbers

You can also make ranges from other data types. It works if Raku knows how to get the next value. For example:

```raku
my $letters = 'a' .. 'z';
```

In Raku, ranges have their own data type. The variable `$r` has the type `Range`.

{% include nav.html %}

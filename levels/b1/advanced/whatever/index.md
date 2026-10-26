---
title: The Whatever star
---

{% include menu.html %}

You may have seen `*` in expressions like `* * 2` or `* %% 2`. They appear in calls to `map` and `grep`. That `*` is the _Whatever star_. The expression around it creates a small function with one argument, right in place. This section explains what the star really is and how it relates to a block. It also shows where the star alone simply means “whatever you want”.

## A star makes a function

When an expression contains `*`, Raku turns the whole expression into a function, a `WhateverCode`. In this function, the star stands for the argument:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` is a function that multiplies its only argument by two. This is why `(1..5).map(* * 2)` works. `map` gets exactly such a function with one argument.

## Whatever compared to a block

A Whatever expression is a shorter way to write a function. You could also write this function as a block. These three are the same:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

The Whatever form does not name a parameter. The block form uses the topic variable `$_`, and the pointy form names `$x`. The last one, `-> $x { ... }`, is a small function by itself. You will learn it properly in [Anonymous subroutines](/advanced/anonymous-subroutines). Here, just read it as a third way to write the same one-argument function. For a simple expression, the star is the shortest. That is why it is so common with `map`, `grep`, and `sort`:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

Choose a **block** when the code needs more than one expression. A block is also good when a clear parameter name helps. Choose the **star** when a short expression is enough.

## More than one star

Every `*` in the expression is its own argument, in order. So two stars make a function with **two** arguments:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Here, `* + *` is a function with two arguments, and it adds them. For example, it can add a running total and the next element.

## The Whatever on its own

On its own, `*` means “whatever”: as much as there is, or no limit. Here are two common uses:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * is the array length, so *-1 is the last index

say (1..*).head(3); # (1 2 3)  — 1..* is an open-ended range
```

In `@a[*-1]`, the star stands for the number of elements. In `1..*`, it means “no upper limit”. The star can build a function or mean “whatever you want”. Either way, it is one of the most useful short forms in Raku.

{% include nav.html %}

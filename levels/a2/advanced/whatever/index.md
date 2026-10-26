---
title: The Whatever star
---

{% include menu.html %}

Maybe you have seen `*` in expressions like `* * 2` or `* %% 2`. You use them with `map` and `grep`. This `*` is the _Whatever star_. The expression around it makes a small function. The function has one argument. Raku makes it right there, in place. This section explains what the star really is. It also compares the star with a block. And it shows where the star alone simply means “whatever you want”.

## A star makes a function

An expression can have `*` in it. Then Raku turns the whole expression into a function. This function is a `WhateverCode`. In it, the star stands for the argument:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` is a function. It takes one argument and multiplies it by two. That is why `(1..5).map(* * 2)` works. `map` gets exactly this kind of function with one argument.

## Whatever or a block

A Whatever expression is a short way to write a function. You can also write the same function as a block. These three lines do the same thing:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

The Whatever form has no parameter name. The block form uses the topic variable `$_`. The pointy form has the name `$x`. The last one, `-> $x { ... }`, is itself a small function. You will learn about it later, in [Anonymous subroutines](/advanced/anonymous-subroutines). Here, see it simply as a third form of the same function. This function has one argument. For a simple expression, the star is the shortest. That is why people often use it with `map`, `grep`, and `sort`:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

Use a **block** if the code needs more than one expression. A block is also better if a clear parameter name helps. Use the **star** if one short expression is enough.

## More than one star

Each `*` in the expression is a separate argument. They come in order. So two stars make a function with **two** arguments:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Here, `* + *` is a function with two arguments. It adds them. For example, they can be a total so far and the next element.

## The Whatever star alone

The star alone, `*`, means “whatever”. It can mean “as much as there is”. It can also mean “no limit”. Here are two common uses:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * is the array length, so *-1 is the last index

say (1..*).head(3); # (1 2 3)  — 1..* is an open-ended range
```

In `@a[*-1]`, the star is the number of elements. In `1..*`, the star means “no upper limit”. Sometimes the star makes a function. Sometimes it means “whatever you want”. Either way, it is one of Raku’s most useful short forms.

{% include nav.html %}

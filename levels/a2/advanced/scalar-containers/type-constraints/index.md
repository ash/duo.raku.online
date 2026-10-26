---
title: Type constraints
---

{% include menu.html %}

In the [Essentials part](/essentials/typed-variables/type-constraints/), you learned to give a variable a type. You did it with a type constraint. Here is an important point. The _container_ checks this rule. It decides which values it accepts.

This declaration creates a scalar container. It can keep only integers:

```raku
my Int $int;
```

A typed container accepts only values that fit its type. So all these assignments work:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

In this case, Raku does not change the type by itself. In Raku, a number with a decimal point is a `Rat` value. So you cannot assign it:

```raku
my Int $int;
$int = 123.45;
```

You get the error at compile time. This is before the program runs:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Convert the value yourself. Then there is no error:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

There are two dots in `123.45.Int`. Do not let them confuse you. The first dot is the decimal point. The second dot calls the `Int` method. This method works on the `Rat` value, a rational number.

{% include nav.html %}

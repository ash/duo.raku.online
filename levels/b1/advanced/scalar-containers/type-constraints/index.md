---
title: Type constraints
---

{% include menu.html %}

In the [Essentials part](/essentials/typed-variables/type-constraints/), you set variable types with type constraints. It is important to note that the _container_ is what checks this rule. It decides which values it can accept.

This declaration creates a scalar container that can keep only integers:

```raku
my Int $int;
```

A typed container only accepts values that fit its type. So all of these assignments are fine:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

Raku does not change the type automatically here. In Raku, a number with a decimal point is a `Rat`. So you cannot assign it:

```raku
my Int $int;
$int = 123.45;
```

You get an error even at compile time:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

To avoid the error, convert the value yourself:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

Do not let the two dots in `123.45.Int` confuse you. The first one is the decimal point. The second one calls the `Int` method on the rational value, which is a `Rat`.

{% include nav.html %}

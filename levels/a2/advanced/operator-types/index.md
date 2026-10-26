---
title: Types of Raku operators
---

{% include menu.html %}

You already know many operators, like `+`, `~`, and `++`. An operator works on values. These values are its operands. Raku sorts operators into categories. A category is a group. The category depends on _where_ the operator stands next to its operands. Later, you will make your own operators. Then the categories will help you.

## `prefix`

A prefix operator has one operand. It comes _before_ this operand:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Here, `-` changes the sign of the number. The operator `?` turns a value into `True` or `False`. This is its Boolean value.

## `infix`

An infix operator stands _between_ two operands. You know many operators for numbers and strings. Most of them are infix:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

An infix operator is not always a symbol. It can also be a word. Take the `gcd` operator from the section about [integers](/advanced/integers). It is an infix operator. You write its name between its two operands:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

A postfix operator has one operand. It comes _after_ this operand:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` and `postcircumfix`

A circumfix operator stands _around_ its operand. Look at the square brackets that make an array. They are a circumfix operator:

```raku
my @a = [1, 2, 3];
```

A postcircumfix operator also stands around something. But it comes after a term. A term is, for example, a variable. Subscripts are postcircumfix operators. Here, the subscript is the `[1]` after `@a`:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

The names are `prefix`, `infix`, `postfix`, `circumfix`, and `postcircumfix`. Raku uses the same words when you [declare a new operator](/advanced/user-defined-operators). You will see this later.

{% include nav.html %}

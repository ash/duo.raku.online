---
title: Types of Raku operators
---

{% include menu.html %}

You have already used many operators, such as `+`, `~` and `++`. The operands are the values that an operator works on. In Raku, operators are put into categories by _where_ they stand next to their operands. Knowing the categories will help you later, when you create your own operators.

## `prefix`

A prefix operator comes _before_ its one operand:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Here, `-` changes the sign of the number. The `?` operator turns a value into its Boolean.

## `infix`

An infix operator stands _between_ two operands. Most arithmetic and string operators that you know work like this:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

An infix operator does not have to be a symbol. It can also be a word. For example, the `gcd` operator from the [integers](/advanced/integers) section is an infix operator. It is a name that you write between its two operands:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

A postfix operator comes _after_ its one operand:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` and `postcircumfix`

A circumfix operator goes _around_ its operand. The square brackets that create an array are an example:

```raku
my @a = [1, 2, 3];
```

A postcircumfix operator also goes around something, but it comes after a term. A subscript, such as the `[1]` after `@a`, is a postcircumfix operator:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

These are the names of the categories: `prefix`, `infix`, `postfix`, `circumfix` and `postcircumfix`. As you will see later, Raku uses the same words to [declare a new operator](/advanced/user-defined-operators).

{% include nav.html %}

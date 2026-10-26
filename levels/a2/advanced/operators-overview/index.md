---
title: Review of operator behaviour
---

{% include menu.html %}

An expression can have several operators. Then Raku must decide the order. Which operator comes first? Two rules decide this: _precedence_ and _associativity_.

## Precedence

Precedence decides which operator is stronger. The stronger operator takes its operands first. Multiplication has higher precedence than addition. So multiplication happens first:

```raku
say 2 + 3 * 4; # 14
```

Raku reads the expression as `2 + (3 * 4)`. The result is `14`, not `20`. You can always add parentheses. They give a different order:

```raku
say (2 + 3) * 4; # 20
```

## Associativity

Some operators have the _same_ precedence. Then associativity decides the order. Subtraction is left-associative. So Raku groups it from the left:

```raku
say 8 - 3 - 2; # 3
```

This is `(8 - 3) - 2`. The result is `3`. But exponentiation, the operator `**`, is right-associative:

```raku
say 2 ** 3 ** 2; # 512
```

Here, Raku groups the expression as `2 ** (3 ** 2)`. This is `2 ** 9`, and the result is `512`.

## Chained comparisons

You can _chain_ comparison operators. Then they come one after another. Such code is easy to read. It works like in mathematics:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

Raku compares the middle value with both values next to it. `1 < 2 < 3` is true. This is because `1 < 2` is true, and `2 < 3` is true too.

{% include nav.html %}

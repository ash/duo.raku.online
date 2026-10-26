---
title: Review of operator behaviour
---

{% include menu.html %}

When an expression has several operators, Raku must decide in which order to use them. Two rules control this: _precedence_ and _associativity_.

## Precedence

Precedence decides which operator is stronger, that is, which one binds more tightly. Multiplication has higher precedence than addition, so it is done first:

```raku
say 2 + 3 * 4; # 14
```

Raku reads the expression as `2 + (3 * 4)`, so the result is `14` and not `20`. You can always use parentheses to get a different order:

```raku
say (2 + 3) * 4; # 20
```

## Associativity

Associativity decides the order when operators have the _same_ precedence. Subtraction is left-associative, which means that it groups from the left:

```raku
say 8 - 3 - 2; # 3
```

This is `(8 - 3) - 2`, which gives `3`. Exponentiation, on the other hand, is right-associative:

```raku
say 2 ** 3 ** 2; # 512
```

Here, the expression groups as `2 ** (3 ** 2)`. That is `2 ** 9`, which gives `512`.

## Chained comparisons

Comparison operators can be _chained_. This reads naturally and does what you would expect from mathematics:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

The middle value is compared with the values on both sides of it. So `1 < 2 < 3` is true, because both `1 < 2` and `2 < 3` are true.

{% include nav.html %}

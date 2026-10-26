---
title: User-defined operators
---

{% include menu.html %}

Operators in Raku are really just subroutines with special names. This means that you can define your own operators. You use the category names from the [Types of Raku operators](/advanced/operator-types) page: `prefix`, `infix`, `postfix`, and so on.

To declare an operator, write a `sub` with a special name. The name is the category, a colon, and the operator’s symbol in angle brackets. Here is a new infix operator called `plus`:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

Once it is defined, `plus` goes between its two operands. This is exactly like any built-in infix operator.

A postfix operator comes after its operand. The factorial is a classic example. Here it is as the `!` postfix operator. It is built on [the reduction meta-operator](/advanced/metaoperators/reduction) that you saw earlier:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

You are not limited to letters and ASCII punctuation. The symbol of an operator can be any character. This prefix operator uses the section sign, `§`, to double a number:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

Defining operators is a powerful tool, so use it with good taste. A well-chosen operator can make code read like the language of its subject area. An unclear one only confuses the next person who reads the code.

{% include nav.html %}

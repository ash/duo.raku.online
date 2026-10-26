---
title: User-defined operators
---

{% include menu.html %}

In Raku, operators are just subroutines with special names. So you can make your own operators. For this, you use the category names from the page [Types of Raku operators](/advanced/operator-types). These are `prefix`, `infix`, `postfix`, and so on.

To declare an operator, write a `sub`. Its name has three parts. First comes the category. Then comes a colon. Then comes the symbol of the operator in angle brackets. Here is a new infix operator. Its name is `plus`:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

After that, you use `plus` between its two operands. It works exactly like a built-in infix operator.

A postfix operator comes after its operand. The factorial is a typical example. Here it is as the postfix operator `!`. It uses [the reduction meta-operator](/advanced/metaoperators/reduction) that you already know:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

You can use more than letters and ASCII punctuation. The symbol of an operator can be any character. This prefix operator uses the section sign `§`. It doubles a number:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

Your own operators are a strong tool. So use them with care. A good operator makes the code look like the language of its subject. A strange operator only confuses the next reader.

{% include nav.html %}

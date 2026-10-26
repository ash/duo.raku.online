---
title: Quiz — Prefix of postfix
---

{% include menu.html %}

Je hebt `++` *na* een variabele gezien, als postfix. Je kunt het ook *voor* de variabele schrijven. Welke categorie heeft `++` in `++$x`?

```raku
my $x = 5;
say ++$x;
```

{:.quiz}
1 | prefix
0 | postfix
0 | infix
0 | postcircumfix

{% include quiz.html %}

<div class="extended-explanation">

De categorie hangt alleen af van de *positie*. In `++$x` komt de operator voor zijn enige operand, dus het is een **prefix**-operator. Precies dezelfde `++` is een postfix als hij erna komt, zoals in `$x++`. Beide vormen verhogen `$x` met één. De prefix-vorm geeft de nieuwe waarde terug, dus dit print `6`.

</div>

{% include nav.html %}

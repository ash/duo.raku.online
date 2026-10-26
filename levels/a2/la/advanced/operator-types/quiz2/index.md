---
title: Quiz — Praefixus vel postfixus
translations_gpt:
---

{% include menu.html %}

Vidisti `++` *post* variabilem. Ibi postfixus est. Etiam *ante* variabilem eum scribere potes. Quae est categoria `++` in `++$x`?

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

Sola *positio* categoriam decernit. In `++$x` operator ante unicum operandum suum stat. Itaque operator **praefixus** est. Scribe eundem `++` post eum, ut in `$x++`. Tum postfixus est. Ambae formae 1 ad `$x` addunt. Forma praefixa novum valorem reddit. Itaque programma `6` imprimit.

</div>

{% include nav.html %}

---
title: Quiz — Praefixus vel postfixus
translations_gpt:
---

{% include menu.html %}

Vidisti `++` *post* variabilem, ut postfixum. Etiam *ante* variabilem eum scribere potes. Quae categoria est `++` in `++$x`?

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

Categoria solum a *positione* pendet. In `++$x` operator ante unicum operandum suum venit, itaque operator **praefixus** est. Idem ipse `++` postfixus est cum post venit, ut in `$x++`. Ambae formae `$x` uno augent. Forma praefixa novum valorem reddit, itaque hoc `6` imprimit.

</div>

{% include nav.html %}

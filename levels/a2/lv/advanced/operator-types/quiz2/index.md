---
title: Viktorīna — Prefikss vai postfikss
translations_gpt:
---

{% include menu.html %}

Jūs esat redzējuši `++` *aiz* mainīgā. Tur tas ir postfikss. To var rakstīt arī *pirms* mainīgā. Kāda ir `++` kategorija izteiksmē `++$x`?

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

Kategoriju nosaka tikai *pozīcija*. Izteiksmē `++$x` operators stāv pirms sava vienīgā operanda. Tāpēc tas ir **prefiksa** operators. Uzrakstiet to pašu `++` aiz operanda, kā `$x++`. Tad tas ir postfikss. Abas formas palielina `$x` par 1. Prefiksa forma atgriež jauno vērtību. Tāpēc programma izdrukā `6`.

</div>

{% include nav.html %}

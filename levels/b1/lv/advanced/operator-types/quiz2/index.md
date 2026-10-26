---
title: Viktorīna — Prefikss vai postfikss
translations_gpt:
---

{% include menu.html %}

Jūs esat redzējuši `++` *aiz* mainīgā kā postfiksu. To var rakstīt arī *pirms* mainīgā. Kādai kategorijai pieder `++` izteiksmē `++$x`?

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

Kategorija ir atkarīga tikai no *pozīcijas*. Izteiksmē `++$x` operators atrodas pirms sava vienīgā operanda, tāpēc tas ir **prefiksa** operators. Tas pats `++` ir postfikss, kad tas atrodas aiz operanda, kā `$x++`. Abas formas palielina `$x` par vienu. Prefiksa forma atgriež jauno vērtību, tāpēc programma izdrukā `6`.

</div>

{% include nav.html %}

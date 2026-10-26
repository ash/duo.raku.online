---
title: Viktorīna — Priekšrakstu prefiksi
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
my $v;
quietly {
    say $v + 10;
}
```

{:.quiz}
0 | Brīdinājumu, tad 10
1 | 10
0 | Nil
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

`$v` ir nedefinēts. Kad jūs tam pieskaitāt `10`, Raku izmanto `0` mainīgā `$v` vietā. Tāpēc rezultāts ir `10`. Parasti ir arī brīdinājums: “neinicializēta vērtība”. Bet prefikss `quietly` to paslēpj. Tāpēc programma izdrukā tikai `10`.

</div>

{% include nav.html %}

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

Kad jūs pieskaitāt `10` nedefinētajam `$v`, Raku to uztver kā `0` un dod `10`. Parasti būtu arī brīdinājums par “neinicializētu vērtību”. Bet prefikss `quietly` to paslēpj, tāpēc tiek izdrukāts tikai `10`.

</div>

{% include nav.html %}

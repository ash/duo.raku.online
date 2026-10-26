---
title: Viktorīna — Dinamiskie mainīgie
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
my $*n = 1;
sub show { say $*n }

sub run {
    my $*n = 2;
    show();
}

run();
```

{:.quiz}
0 | 1
1 | 2
0 | Neko
0 | Kļūdu

{% include quiz.html %}

<div class="extended-explanation">

`show` ir uzrakstīta augšējā līmenī, tieši blakus `my $*n = 1`. Bet šai vietai nav nozīmes. Raku meklē dinamisku mainīgo caur *izsaukumu steku*. Nav svarīgi, kur kods atrodas. Šeit `show` tiek izsaukta no `run`, kas vēlreiz deklarēja `$*n` kā `2`. Tāpēc spēkā ir šī vērtība, un programma izdrukā `2`.

</div>

{% include nav.html %}

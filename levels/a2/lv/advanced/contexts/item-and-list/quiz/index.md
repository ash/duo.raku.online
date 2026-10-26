---
title: Viktorīna — Vienuma konteksts
---

{% include menu.html %}

Ko šī programma izdrukā?

```raku
my @a = 1, 2, 3;
my $n = 0;
$n++ for $(@a);
say $n;
```

{:.quiz}
0 | 3
1 | 1
0 | 0
0 | 6

{% include quiz.html %}

<div class="extended-explanation">

Kontekstualizators `$( … )` uzliek elementa kontekstu. Tāpēc masīvs ir viena vērtība, nevis elementu saraksts. Cikls `for` redz vienu elementu. Tāpēc tas izpilda savu ķermeni tikai vienu reizi. Beigās `$n` ir `1`. Bez `$( )` cikls izpildās trīs reizes.

</div>

{% include nav.html %}

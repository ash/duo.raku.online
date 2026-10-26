---
title: Metožu izsaukumu pāradresēšana
---

{% include menu.html %}

Patiesībā skalārs konteineris ir `Scalar` tipa objekts. Vairumā gadījumu jūs pat nepamanāt konteineru, kad lietojat skalāru. Jums par to nav jādomā. Jūs varat iedomāties, ka strādājat tieši ar vērtībām, kas ir tajā.

Tas darbojas tāpēc, ka skalārs konteineris nodod metožu izsaukumus tālāk savai vērtībai. Piemēram, pēc `my $lang = 'Raku'` jūs varat izsaukt metodi `.chars` mainīgajam:

```raku
my $lang = 'Raku';
say $lang.chars; # 4
```

Programma izdrukā `4`, rakstzīmju skaitu virknē `'Raku'`. Tagad izsauciet `.chars` tieši virknes vērtībai, nevis konteinera mainīgajam. Rezultāts ir tieši tāds pats:

```raku
say 'Raku'.chars; # 4
```

Citiem vārdiem, konteineris klusi nodod `.chars` izsaukumu virknei, kas ir tajā. Tad tas atgriež jums rezultātu.

{% include nav.html %}

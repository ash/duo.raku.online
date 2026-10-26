---
title: Metožu izsaukumu pāradresēšana
---

{% include menu.html %}

Skalārs konteineris patiesībā ir `Scalar` tipa objekts. Parasti jūs šo konteineru nemaz neredzat. Jums par to nav jādomā. Jūs varat iedomāties, ka strādājat tieši ar vērtībām tajā.

Kāpēc tas darbojas? Skalārs konteineris nodod metožu izsaukumus tālāk vērtībai, kas ir tajā. Piemēram, ņemiet piešķiršanu `my $lang = 'Raku'`. Pēc tās jūs varat izsaukt metodi `.chars` mainīgajam:

```raku
my $lang = 'Raku';
say $lang.chars; # 4
```

Programma izdrukā `4`. Tas ir rakstzīmju skaits virknē `'Raku'`. Tagad izsauciet `.chars` pašai virknes vērtībai, nevis mainīgajam. Rezultāts ir tieši tāds pats:

```raku
say 'Raku'.chars; # 4
```

Tātad konteineris klusi nodod `.chars` izsaukumu tālāk savai virknei. Tad tas atdod jums rezultātu.

{% include nav.html %}

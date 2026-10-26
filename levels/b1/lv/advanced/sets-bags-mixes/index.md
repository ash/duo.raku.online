---
title: Kopas, somas un maisījumi
translations_gpt:
---

{% include menu.html %}

Bez masīviem un jaukteņiem Raku ir daži īpaši konteineri vērtību kolekcijām. Vienkāršākais ir `Set`. Tā ir _atšķirīgu_ vērtību kolekcija bez noteiktas secības. Katra vērtība vai nu ir kopā, vai nav, un atkārtotas vērtības tiek ignorētas.

Kopu izveido ar rutīnu `set`. Ja vērtība atkārtojas, kopa patur tikai vienu tās kopiju:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

Mēs padevām piecus skaitļus, bet kopā ir tikai trīs elementi. Tas ir tāpēc, ka `1` un `2` parādījās vairāk nekā vienu reizi.

Galvenais jautājums, ko jūs uzdodat kopai, ir, vai vērtība ir tajā. Operators `∈`, ko lasa kā «ir elements no», atgriež Būla vērtību:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

Ja vēlaties palikt pie vienkārša ASCII, rakstiet to pašu operatoru kā `(elem)`:

```raku
say 2 (elem) set(1, 2, 3); # True
```

Tālāk jūs redzēsiet, kā apvienot kopas. Jūs iepazīsiet arī maisus un maisījumus, kas ir kopu tuvi radinieki.

{% include nav.html %}

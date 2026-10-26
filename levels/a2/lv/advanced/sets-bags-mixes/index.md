---
title: Kopas, somas un maisījumi
translations_gpt:
---

{% include menu.html %}

Raku ir masīvi un jaukteņi. Raku ir arī daži īpaši konteineri vērtību grupām. Vienkāršākais no tiem ir `Set`. Tā vērtības ir _atšķirīgas_, tāpēc katra vērtība atšķiras no citām. Kopas vērtībām nav secības. Vērtība ir kopā, vai arī tās tur nav. Ja vērtība parādās divreiz, kopa otro ignorē.

Lai izveidotu kopu, izmantojiet rutīnu `set`. Vērtības, kas atkārtojas, kļūst par vienu vērtību:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

Mēs dodam kopai piecus skaitļus. Bet tajā ir tikai trīs elementi. Tas ir tāpēc, ka `1` un `2` parādās vairāk nekā vienu reizi.

Parasti jūs kopai uzdodat vienu galveno jautājumu. Vai vērtība ir kopā? Operators `∈` uz to atbild. «Ir elements no» — tā jūs lasāt `∈`. Tas atgriež Būla vērtību, `True` vai `False`:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

Varbūt jūs gribat izmantot tikai vienkāršas ASCII rakstzīmes. Tad rakstiet to pašu operatoru kā `(elem)`:

```raku
say 2 (elem) set(1, 2, 3); # True
```

Nākamie temati parāda, kā apvienot kopas. Tie parāda arī maisus un maisījumus. Maisi un maisījumi ir kopu tuvi radinieki.

{% include nav.html %}

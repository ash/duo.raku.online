---
title: Skaitļu bāzes
translations_gpt:
---

{% include menu.html %}

Kodā jums nav obligāti jāraksta veseli skaitļi decimālajā sistēmā. Raku uzreiz zina trīs biežākās citas bāzes. Katrai no tām ir savs prefikss:

```raku
say 0xFF;   # 255  — heksadecimālā (bāze 16)
say 0b1010; # 10   — binārā (bāze 2)
say 0o17;   # 15   — oktālā (bāze 8)
```

Lai kādu bāzi jūs izmantotu kodā, vērtība ir tas pats veselais skaitlis. Atšķiras tikai veids, kā jūs to rakstāt.

Visām citām bāzēm ir radiksa forma `:bāze<skaitlis>`:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

Lai ietu pretējā virzienā, izsauciet metodi `base`. Tā uzraksta skaitli citā bāzē un atgriež ciparu virkni:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}

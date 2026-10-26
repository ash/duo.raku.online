---
title: Secību raksti
translations_gpt:
---

{% include menu.html %}

Operators `...` var atrast ne tikai aritmētiskus soļus.

Dodiet tam trīs vērtības, kas aug ar reizināšanu. Tad tas turpina ar _ģeometrisku_ virkni:

```raku
say 1, 2, 4 ... 64; # (1 2 4 8 16 32 64)
```

Šeit katra vērtība ir divreiz lielāka par iepriekšējo. Tāpēc virkne katru reizi dubultojas. Tā apstājas, kad sasniedz `64`.

Virknēs var būt arī citas vērtības, ne tikai skaitļi. Ar virknēm Raku izmanto alfabēta secību:

```raku
say 'a' ... 'e'; # (a b c d e)
```

Virkne var skaitīt arī uz leju. Ja beigu punkts ir mazāks par sākumu, vērtības kļūst mazākas:

```raku
say 10 ... 1; # (10 9 8 7 6 5 4 3 2 1)
```

Katru reizi jūs parādāt likumsakarību ar piemēru. Tad operators `...` pievieno pārējās vērtības.

{% include nav.html %}

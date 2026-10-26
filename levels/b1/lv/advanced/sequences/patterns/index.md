---
title: Secību raksti
translations_gpt:
---

{% include menu.html %}

Operators `...` zina vairāk likumsakarību nekā tikai aritmētiskus soļus.

Pieņemsim, ka jūs tam dodat trīs vērtības, kas aug ar reizināšanu. Tad tas turpina ar _ģeometrisku_ virkni:

```raku
say 1, 2, 4 ... 64; # (1 2 4 8 16 32 64)
```

Šeit katra vērtība ir divreiz lielāka par iepriekšējo. Tāpēc virkne dubultojas, līdz sasniedz `64`.

Virknēs var būt ne tikai skaitļi. Ar virknēm Raku seko parastajai alfabēta secībai:

```raku
say 'a' ... 'e'; # (a b c d e)
```

Virkne var skaitīt arī lejup. Ja beigu punkts ir zemāks par sākumu, vērtības kļūst mazākas:

```raku
say 10 ... 1; # (10 9 8 7 6 5 4 3 2 1)
```

Katrā gadījumā jūs parādāt likumsakarību ar piemēru. Pēc tam operators `...` pievieno pārējo.

{% include nav.html %}

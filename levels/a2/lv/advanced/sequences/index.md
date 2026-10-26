---
title: Secības
translations_gpt:
---

{% include menu.html %}

_Virkne_ ir vērtību rinda noteiktā secībā. Raku tās rada vienu pēc otras. Raku būvē virknes ar operatoru `...`. Jūs tam dodat dažas vērtības. Operators tajās atrod likumsakarību. Pēc tam tas rada pārējās vērtības līdz beigu punktam. Beigu punkts ir vērtība, kur virkne beidzas.

Vienkāršākajā gadījumā virkne skaita no vienas vērtības līdz citai:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

Sākumā jūs varat dot divas vērtības. Tad Raku atrod soli starp tām. Tas turpina ar to pašu soli. Tā jūs izveidojat aritmētisku virkni:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Šeit vērtības `1, 3` sākumā dod soli divi. Tāpēc Raku skaita uz augšu pa diviem. Tas apstājas, kad sasniedz `11`.

Operators `...` dod `Seq` tipa vērtību:

```raku
say (1 ... 5).WHAT; # (Seq)
```

Nākamie temati parāda citas likumsakarības, ko zina operators `...`. Tie arī parāda, ka virkne var būt slinka. Tā var būt pat bezgalīga un bez beigām.

{% include nav.html %}

---
title: Secības
translations_gpt:
---

{% include menu.html %}

_Virkne_ ir sakārtota vērtību rinda, kuras vērtības rodas cita pēc citas. Raku būvē virknes ar operatoru `...`. Tas atrod likumsakarību vērtībās, ko jūs tam dodat. Pēc tam tas ģenerē pārējo līdz beigu punktam.

Vienkāršākā virkne tikai skaita no vienas vērtības līdz otrai:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

Ja jūs dodat divas sākuma vērtības, Raku atrod soli starp tām. Pēc tam tas turpina ar to pašu soli. Tā veido aritmētisku virkni:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Šeit sākuma vērtības `1, 3` nosaka soli divi. Tāpēc Raku skaita pa diviem un apstājas, kad sasniedz `11`.

Vērtībai, ko rada `...`, ir tips `Seq`:

```raku
say (1 ... 5).WHAT; # (Seq)
```

Nākamie temati parāda citas likumsakarības, ko operators `...` var atpazīt. Tie arī parāda, kā virkne var būt slinka un pat bezgalīga.

{% include nav.html %}

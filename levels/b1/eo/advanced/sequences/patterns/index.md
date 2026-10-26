---
title: Sekvencaj ŝablonoj
translations_gpt:
---

{% include menu.html %}

La operatoro `...` konas pli da ŝablonoj ol nur aritmetikaj paŝoj.

Supozu, ke vi donas al ĝi tri valorojn, kiuj kreskas per multipliko. Tiam ĝi daŭrigas per _geometria_ sekvenco:

```raku
say 1, 2, 4 ... 64; # (1 2 4 8 16 32 64)
```

Ĉi tie, ĉiu valoro estas duoblo de la antaŭa. Do la sekvenco daŭre duobliĝas, ĝis ĝi atingas `64`.

Sekvencoj povas havi pli ol nombrojn. Kun ĉenoj, Raku sekvas la normalan ordon de la alfabeto:

```raku
say 'a' ... 'e'; # (a b c d e)
```

Sekvenco ankaŭ povas nombri malsupren. Se la fina punkto estas pli malalta ol la komenco, la valoroj malgrandiĝas:

```raku
say 10 ... 1; # (10 9 8 7 6 5 4 3 2 1)
```

En ĉiu kazo, vi montras la ŝablonon per ekzemplo. La operatoro `...` poste aldonas la ceteron.

{% include nav.html %}

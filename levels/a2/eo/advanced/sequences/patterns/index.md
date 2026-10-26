---
title: Sekvencaj ŝablonoj
translations_gpt:
---

{% include menu.html %}

La operatoro `...` povas trovi pli ol aritmetikajn paŝojn.

Donu al ĝi tri valorojn, kiuj kreskas per multipliko. Tiam ĝi daŭrigas per _geometria_ sekvenco:

```raku
say 1, 2, 4 ... 64; # (1 2 4 8 16 32 64)
```

Ĉi tie, ĉiu valoro estas duoble pli granda ol la antaŭa. Do la sekvenco duobliĝas ĉiufoje. Ĝi haltas, kiam ĝi atingas `64`.

Sekvencoj povas ankaŭ havi aliajn valorojn, ne nur nombrojn. Kun ĉenoj, Raku uzas la ordon de la alfabeto:

```raku
say 'a' ... 'e'; # (a b c d e)
```

Sekvenco povas ankaŭ nombri malsupren. Se la fina punkto estas pli malgranda ol la komenco, la valoroj malgrandiĝas:

```raku
say 10 ... 1; # (10 9 8 7 6 5 4 3 2 1)
```

Ĉiufoje, vi montras la ŝablonon per ekzemplo. Tiam la operatoro `...` aldonas la aliajn valorojn.

{% include nav.html %}

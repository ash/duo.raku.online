---
title: Sekvencoj
translations_gpt:
---

{% include menu.html %}

_Sekvenco_ estas serio de valoroj en ordo, produktataj unu post la alia. Raku konstruas sekvencojn per la operatoro `...`. Ĝi trovas la ŝablonon en la valoroj, kiujn vi donas al ĝi. Poste ĝi generas la ceteron, ĝis fina punkto.

La plej simpla sekvenco nur nombras de unu valoro al alia:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

Se vi donas du komencajn valorojn, Raku trovas la paŝon inter ili. Poste ĝi daŭrigas per la sama paŝo. Tiel vi faras aritmetikan sekvencon:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Ĉi tie, la komencaj valoroj `1, 3` faras la paŝon du. Do Raku nombras supren po du kaj haltas, kiam ĝi atingas `11`.

La valoro, kiun `...` produktas, havas la tipon `Seq`:

```raku
say (1 ... 5).WHAT; # (Seq)
```

La sekvaj temoj montras aliajn ŝablonojn, kiujn la operatoro `...` povas rekoni. Ili ankaŭ montras, kiel sekvenco povas esti maldiligenta, kaj eĉ senlima.

{% include nav.html %}

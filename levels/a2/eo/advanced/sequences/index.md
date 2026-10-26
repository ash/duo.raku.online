---
title: Sekvencoj
translations_gpt:
---

{% include menu.html %}

_Sekvenco_ estas serio de valoroj en fiksita ordo. Raku faras ilin unu post la alia. Raku konstruas sekvencojn per la operatoro `...`. Vi donas al ĝi kelkajn valorojn. La operatoro trovas la ŝablonon en ili. Poste ĝi faras la ceterajn valorojn, ĝis fina punkto. La fina punkto estas la valoro, kie la sekvenco finiĝas.

En la plej simpla kazo, la sekvenco nombras de unu valoro al alia:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

Vi povas doni du valorojn ĉe la komenco. Tiam Raku trovas la paŝon inter ili. Ĝi daŭrigas per la sama paŝo. Tiel vi faras aritmetikan sekvencon:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Ĉi tie, la valoroj `1, 3` ĉe la komenco donas paŝon de du. Do Raku nombras supren po du. Ĝi haltas, kiam ĝi atingas `11`.

La operatoro `...` donas valoron de la tipo `Seq`:

```raku
say (1 ... 5).WHAT; # (Seq)
```

La sekvaj temoj montras aliajn ŝablonojn, kiujn la operatoro `...` konas. Ili ankaŭ montras, ke sekvenco povas esti maldiligenta. Ĝi povas eĉ esti senlima kaj havi neniun finon.

{% include nav.html %}

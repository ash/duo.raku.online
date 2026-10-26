---
title: Prokuranto de metodvokoj
---

{% include menu.html %}

Fakte, skalara ujo estas objekto de la tipo `Scalar`. Plej ofte, vi eĉ ne rimarkas la ujon, kiam vi uzas skalaron. Vi ne bezonas pensi pri ĝi. Vi povas imagi, ke vi laboras rekte kun la valoroj en ĝi.

Tio funkcias, ĉar skalara ujo transdonas metodvokojn al sia valoro. Ekzemple, post `my $lang = 'Raku'`, vi povas voki la metodon `.chars` sur la variablo:

```raku
my $lang = 'Raku';
say $lang.chars; # 4
```

La programo presas `4`, la nombron de signoj en la ĉeno `'Raku'`. Nun voku `.chars` rekte sur la ĉena valoro, ne sur la ujo-variablo. La rezulto estas ekzakte la sama:

```raku
say 'Raku'.chars; # 4
```

Alivorte, la ujo silente transdonas la vokon `.chars` al la ĉeno en ĝi. Poste ĝi redonas la rezulton al vi.

{% include nav.html %}

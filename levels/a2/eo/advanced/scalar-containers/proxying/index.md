---
title: Prokuranto de metodvokoj
---

{% include menu.html %}

Skalara ujo vere estas objekto de la tipo `Scalar`. Kutime, vi tute ne vidas ĉi tiun ujon. Vi ne bezonas pensi pri ĝi. Vi povas imagi, ke vi laboras rekte kun la valoroj en ĝi.

Kial tio funkcias? Skalara ujo transdonas metodvokojn al la valoro en ĝi. Ekzemple, prenu la asignon `my $lang = 'Raku'`. Post ĝi, vi povas voki la metodon `.chars` sur la variablo:

```raku
my $lang = 'Raku';
say $lang.chars; # 4
```

La programo presas `4`. Tio estas la nombro de signoj en la ĉeno `'Raku'`. Nun voku `.chars` sur la ĉena valoro mem, ne sur la variablo. La rezulto estas ekzakte la sama:

```raku
say 'Raku'.chars; # 4
```

Do la ujo silente transdonas la vokon `.chars` al sia ĉeno. Poste ĝi redonas la rezulton al vi.

{% include nav.html %}

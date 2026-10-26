---
title: Serĉado en ĉenoj
translations_gpt:
---

{% include menu.html %}

Kelkaj metodoj diras al vi, kio estas en ĉeno.

La metodo `contains` kontrolas, ĉu unu ĉeno estas en alia ĉeno. Ĝi povas esti en ajna loko:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

La metodo `starts-with` kontrolas la komencon de ĉeno. La metodo `ends-with` kontrolas la finon:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Ĉu vi bezonas la ekzaktan pozicion de parto de ĉeno? Tiam uzu `index`. Ĝi redonas la pozicion de la unua kongruo. Ĝi nombras de nulo:

```raku
say 'Raku'.index('k'); # 2
```

Foje `index` ne povas trovi la parton. Tiam ĝi redonas `Nil`, ne nombron:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}

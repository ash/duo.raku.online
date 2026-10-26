---
title: Serĉado en ĉenoj
translations_gpt:
---

{% include menu.html %}

Pluraj metodoj diras al vi, kion ĉeno enhavas.

La metodo `contains` kontrolas, ĉu unu ĉeno estas ie ajn ene de alia:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

La metodoj `starts-with` kaj `ends-with` kontrolas, kiel ĉeno komenciĝas kaj finiĝas:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Por trovi la ekzaktan pozicion de subĉeno, uzu `index`. Ĝi redonas la pozicion de la unua kongruo, nombrante de nulo:

```raku
say 'Raku'.index('k'); # 2
```

Se `index` ne trovas la subĉenon, ĝi redonas `Nil` anstataŭ nombron:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}

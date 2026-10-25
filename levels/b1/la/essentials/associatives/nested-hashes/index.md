---
title: Nidificata hashes
---

{% include menu.html %}

Nidos hashium simili modo creas ac [nidos arrayium](/la/essentials/positionals/nested-arrays). Utere uncis curvis circa hashes interiores.

```raku
my %people =
    John => {
        age => 20,
        city => 'Madrid'
    },
    Alla => {
        age => 21,
        city => 'Tokyo'
    };
```

Nota quod comma terminale (comma post ultimum elementum) syntaxis valida est:

```raku
my %people =
    John => {
        age => 20,
        city => 'Madrid',
    },
    Alla => {
        age => 21,
        city => 'Tokyo',
    };
```

Cum hoc commate facilius est structuram mutare, lineas effingendo et inserendo.

Utere duabus clavibus deinceps ut elementa hashium interiorum accipias.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}

---
title: Nidificata hashes
---

{% include menu.html %}

Nidos hashium eodem modo facis ac [nidos arrayium](/la/essentials/positionals/nested-arrays). Pone uncos curvos circa quemque hash interiorem.

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

Nota: comma post ultimum elementum etiam rectum est:

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

Hoc comma utile est. Adiuvat cum structuram lineas effingendo et inserendo mutas.

Ut elementum hash interioris accipias, duas claves adhibe. Scribe eas unam post alteram.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}

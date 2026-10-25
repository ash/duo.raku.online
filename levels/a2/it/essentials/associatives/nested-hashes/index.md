---
title: Hash annidati
---

{% include menu.html %}

Crei gli hash annidati come gli [array annidati](/it/essentials/positionals/nested-arrays). Metti le parentesi graffe intorno a ogni hash interno.

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

Nota che anche una virgola dopo l'ultimo elemento è corretta:

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

La virgola è utile. Aiuta quando cambi la struttura con copia e incolla.

Per prendere un elemento di un hash interno, usa due chiavi. Scrivile una dopo l'altra.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}

---
title: Hash annidati
---

{% include menu.html %}

Puoi creare hash annidati in modo simile agli [array annidati](/it/essentials/positionals/nested-arrays). Usa le parentesi graffe intorno agli hash interni.

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

Nota che una virgola finale (una virgola dopo l'ultimo elemento) è sintassi valida:

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

Questa virgola rende più facile cambiare la struttura copiando e incollando le righe.

Usa due chiavi di seguito per prendere gli elementi degli hash interni.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}

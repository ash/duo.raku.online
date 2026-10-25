---
title: Hashes anidados
---

{% include menu.html %}

Creas hashes anidados igual que los [arrays anidados](/es/essentials/positionals/nested-arrays). Pon llaves alrededor de cada hash interno.

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

Fíjate en que una coma después del último elemento también es correcta:

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

La coma es útil. Ayuda cuando cambias la estructura copiando y pegando.

Para obtener un elemento de un hash interno, usa dos claves. Escríbelas una después de la otra.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}

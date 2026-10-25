---
title: Hashes anidados
---

{% include menu.html %}

Creas hashes anidados de forma parecida a los [arrays anidados](/es/essentials/positionals/nested-arrays). Usa llaves alrededor de los hashes internos.

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

Fíjate en que una coma final (una coma después del último elemento) es sintaxis válida:

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

Esta coma hace más fácil cambiar la estructura copiando y pegando líneas.

Usa dos claves seguidas para obtener los elementos de los hashes internos.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}

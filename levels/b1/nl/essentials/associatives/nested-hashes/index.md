---
title: Geneste hashes
---

{% include menu.html %}

Je maakt geneste hashes ongeveer net zo als [geneste arrays](/nl/essentials/positionals/nested-arrays). Gebruik accolades rond de binnenste hashes.

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

Let op dat een afsluitende komma (een komma na het laatste item) geldige syntaxis is:

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

Deze komma maakt het makkelijker om de structuur te veranderen door regels te kopiëren en te plakken.

Gebruik twee sleutels achter elkaar om de elementen van de binnenste hashes te krijgen.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}

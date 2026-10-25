---
title: Geneste hashes
---

{% include menu.html %}

Je maakt geneste hashes op dezelfde manier als [geneste arrays](/nl/essentials/positionals/nested-arrays). Zet accolades om elke binnenste hash.

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

Let op: een komma na het laatste item is ook goed:

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

De komma is handig. Hij helpt als je de structuur verandert met kopiëren en plakken.

Om een element van een binnenste hash te krijgen, gebruik je twee sleutels. Schrijf ze achter elkaar.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}

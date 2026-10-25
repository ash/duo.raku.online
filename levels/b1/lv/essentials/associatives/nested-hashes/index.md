---
title: Ligzdoti hashes
---

{% include menu.html %}

Ligzdotus hash izveido līdzīgi kā [ligzdotus masīvus](/lv/essentials/positionals/nested-arrays). Izmantojiet figūriekavas ap iekšējiem hash.

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

Ņemiet vērā, ka beigu komats (komats aiz pēdējā elementa) ir pareiza sintakse:

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

Šis komats atvieglo struktūras mainīšanu, kopējot un ielīmējot rindas.

Izmantojiet divas atslēgas pēc kārtas, lai iegūtu iekšējo hash elementus.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}

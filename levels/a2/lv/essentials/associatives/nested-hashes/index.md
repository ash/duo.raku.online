---
title: Ligzdoti hashes
---

{% include menu.html %}

Ligzdotus hash veido tāpat kā [ligzdotus masīvus](/lv/essentials/positionals/nested-arrays). Lieciet figūriekavas ap katru iekšējo hash.

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

Ņemiet vērā, ka komats aiz pēdējā elementa arī ir pareizs:

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

Šis komats ir noderīgs. Tas palīdz, kad jūs maināt struktūru ar kopēšanu un ielīmēšanu.

Lai iegūtu iekšējā hash elementu, izmantojiet divas atslēgas. Rakstiet tās vienu pēc otras.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}

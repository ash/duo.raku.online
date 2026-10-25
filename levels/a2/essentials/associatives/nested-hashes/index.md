---
title: Nested hashes
---

{% include menu.html %}

You make nested hashes in the same way as [nested arrays](/essentials/positionals/nested-arrays). Put curly braces around each inner hash.

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

Note that a comma after the last item is also correct:

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

The comma is useful. It helps when you change the structure with copy and paste.

To get an element of an inner hash, use two keys. Write them one after the other.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}

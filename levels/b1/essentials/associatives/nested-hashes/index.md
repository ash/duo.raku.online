---
title: Nested hashes
---

{% include menu.html %}

You create nested hashes in a similar way to [nested arrays](/essentials/positionals/nested-arrays). Use curly braces around the inner hashes.

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

Note that a trailing comma (a comma after the last item) is valid syntax:

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

This comma makes it easier to change the structure by copying and pasting lines.

Use two keys in a row to get the elements of the inner hashes.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}

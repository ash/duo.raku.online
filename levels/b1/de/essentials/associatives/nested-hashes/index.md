---
title: Verschachtelte Hashes
---

{% include menu.html %}

Verschachtelte Hashes erstellen Sie ähnlich wie [verschachtelte Arrays](/de/essentials/positionals/nested-arrays). Verwenden Sie geschweifte Klammern um die inneren Hashes.

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

Beachten Sie, dass ein abschließendes Komma (ein Komma nach dem letzten Element) gültige Syntax ist:

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

Mit diesem Komma ist es leichter, die Struktur durch Kopieren und Einfügen von Zeilen zu ändern.

Verwenden Sie zwei Schlüssel hintereinander, um die Elemente der inneren Hashes zu bekommen.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}

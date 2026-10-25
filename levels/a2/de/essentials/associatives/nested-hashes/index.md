---
title: Verschachtelte Hashes
---

{% include menu.html %}

Verschachtelte Hashes erstellen Sie genauso wie [verschachtelte Arrays](/de/essentials/positionals/nested-arrays). Setzen Sie geschweifte Klammern um jeden inneren Hash.

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

Beachten Sie: Ein Komma nach dem letzten Element ist auch richtig:

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

Das Komma ist nützlich. Es hilft, wenn Sie die Struktur mit Kopieren und Einfügen ändern.

Um ein Element eines inneren Hashes zu bekommen, verwenden Sie zwei Schlüssel. Schreiben Sie sie nacheinander.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}

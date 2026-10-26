---
title: Schlüssel, Werte und Paare
---

{% include menu.html %}

Andere Adverbien ändern, **was** eine Indizierung zurückgibt. Normalerweise gibt eine Indizierung nur den Wert zurück, aber diese Adverbien geben mehr zurück:

* `:v` — den Wert (Standard)
* `:k` — den Schlüssel (oder Index)
* `:kv` — sowohl den Schlüssel als auch den Wert
* `:p` — ein `Pair` aus Schlüssel und Wert

Bei einem Array ist der "Schlüssel" der Index:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` liefert den Index und den Wert zusammen in einer Liste. `@a[1]:p` liefert sie als Pair.

Das Gleiche funktioniert bei Hashes. Besonders nützlich ist es bei einem Slice über mehrere Schlüssel auf einmal:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Hier liefert ein Slice aus zwei Schlüsseln jeden Schlüssel, gefolgt von seinem Wert. `map`, `for` und ähnliche Werkzeuge verlassen sich oft auf diese Adverbien. Mit ihnen kannst du Schlüssel und Werte nebeneinander verarbeiten, ohne getrennte Abfragen.

{% include nav.html %}

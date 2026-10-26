---
title: Schlüssel, Werte und Paare
---

{% include menu.html %}

Andere Adverbien ändern, **was** eine Indizierung zurückgibt. Normalerweise gibt eine Indizierung den Wert zurück. Diese Adverbien geben mehr zurück:

* `:v` — den Wert; das ist der Standard
* `:k` — den Schlüssel oder den Index
* `:kv` — den Schlüssel und den Wert
* `:p` — ein `Pair` aus dem Schlüssel und dem Wert

Bei einem Array ist der "Schlüssel" der Index:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` gibt den Index und den Wert zusammen in einer Liste zurück. `@a[1]:p` gibt sie als Pair zurück.

Das funktioniert auch bei Hashes. Mit einem Slice ist es sehr nützlich. Ein Slice hat mehrere Schlüssel auf einmal:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Hier hat der Slice zwei Schlüssel. Das Ergebnis ist ein Schlüssel, sein Wert, der nächste Schlüssel, sein Wert. `map`, `for` und ähnliche Werkzeuge verwenden diese Adverbien oft. Mit ihnen kannst du mit Schlüsseln und Werten zusammen arbeiten. Du brauchst keine getrennten Abfragen.

{% include nav.html %}

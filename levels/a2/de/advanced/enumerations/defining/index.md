---
title: Ein Enum definieren
---

{% include menu.html %}

Um ein Enum zu deklarieren, schreibe das Schlüsselwort `enum`. Dann schreibe einen Namen und die Liste mit den Namen der Konstanten:

```raku
enum Colour <red green blue>;
```

Das erstellt einen neuen Typ, `Colour`. Es erstellt auch drei Konstanten: `red`, `green` und `blue`. Du kannst eine Konstante einfach mit ihrem Namen benutzen:

```raku
say red;   # red
say green; # green
```

Hinter jedem Namen steht eine Zahl. Raku vergibt die Zahlen für dich. Raku beginnt bei null und folgt der Reihenfolge deiner Liste. Also ist `red` die `0`, `green` die `1` und `blue` die `2`. Die Werte haben eine Reihenfolge. Also kannst du die Konstanten vergleichen:

```raku
say red < blue; # True
```

Eine Variable kann das Enum als Typ haben. Dann nimmt die Variable nur diese Konstanten an:

```raku
my Colour $c = green;
say $c; # green
```

Eine Konstante und etwas anderes haben vielleicht den gleichen Namen. Dann schreib den Namen des Enums und `::` vor die Konstante. Das funktioniert immer:

```raku
say Colour::red; # red
```

Ein Enum bringt verwandte Konstanten zusammen. Es gibt ihnen einen Namen und einen Typ. Code mit diesen Konstanten ist viel klarer als Code mit einfachen Zahlen. Das nächste Thema handelt von [den Zahlen hinter den Namen](/de/advanced/enumerations/values-and-keys).

{% include nav.html %}

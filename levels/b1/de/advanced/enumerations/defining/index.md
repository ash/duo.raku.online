---
title: Ein Enum definieren
---

{% include menu.html %}

Um ein Enum zu deklarieren, schreibe das Schlüsselwort `enum`, einen Namen und die Liste der Konstantennamen:

```raku
enum Colour <red green blue>;
```

Jetzt gibt es einen neuen Typ, `Colour`, mit drei Konstanten: `red`, `green` und `blue`. Du kannst jede Konstante direkt über ihren Namen verwenden:

```raku
say red;   # red
say green; # green
```

Hinter jedem Namen steht eine Zahl. Raku vergibt diese Zahlen automatisch, ab null, in der Reihenfolge deiner Liste. Also ist `red` die `0`, `green` die `1` und `blue` die `2`. Weil die Werte eine Reihenfolge haben, kannst du die Konstanten vergleichen:

```raku
say red < blue; # True
```

Du kannst einer Variablen das Enum als Typ geben. Dann akzeptiert sie nur diese Konstanten:

```raku
my Colour $c = green;
say $c; # green
```

Der Name einer Konstante kann derselbe sein wie ein anderer Name in deinem Programm. Dann erreichst du die Konstante immer über den Namen des Enums und `::`:

```raku
say Colour::red; # red
```

Ein Enum gibt einer Gruppe verwandter Konstanten einen Namen und einen Typ. Code, der sie verwendet, ist viel klarer als Code mit einfachen Zahlen. Das nächste Thema behandelt [die Zahlen hinter den Namen](/de/advanced/enumerations/values-and-keys).

{% include nav.html %}

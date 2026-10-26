---
title: Werte und Schlüssel
---

{% include menu.html %}

Jede Konstante eines Enums hat einen Namen und eine Zahl. Die Methode `.value` gibt die Zahl zurück. Die Methode `.key` gibt den Namen als String zurück:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

Raku nummeriert die Konstanten ab null. Aber du kannst das ändern. Schreibe die Konstanten als Paare. Dann wählst du die Werte selbst:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Hier beginnt die Arbeitswoche bei eins, nicht bei null.

Der Enum-Typ kann auch alle seine Konstanten auflisten. Die Methode `.enums` gibt eine Map zurück. Eine Map ist wie ein Hash. In dieser Map hat jeder Name seinen Wert:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

Mit `.value`, `.key` und `.enums` kannst du dich frei bewegen. Du kannst von einer Konstante zu ihrer Zahl gehen. Du kannst von einer Zahl zurück zu den Daten gehen. Und du kannst über die ganze Menge gehen. Deshalb sind Enums zum Beispiel für Menüs, Zustände und Nachschlagetabellen nützlich.

{% include nav.html %}

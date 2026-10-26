---
title: Werte und Schlüssel
---

{% include menu.html %}

Jede Enum-Konstante hat einen Namen und eine Zahl. Die Methode `.value` gibt die Zahl zurück, und `.key` gibt den Namen als String zurück:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

Du musst nicht die automatischen Zahlen ab null benutzen. Um die Werte selbst zu wählen, schreibe die Konstanten als Paare:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Hier beginnt die Arbeitswoche bei eins statt bei null.

Der Enum-Typ kann auch selbst alle seine Konstanten auflisten. Seine Methode `.enums` gibt eine Map zurück, die jeden Namen mit seinem Wert verbindet:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

Mit diesen drei Methoden, `.value`, `.key` und `.enums`, kannst du dich frei bewegen. Du kannst von einer Konstante zu ihrer Zahl gehen und von einer Zahl zurück zu den Daten. Du kannst auch mit der ganzen Menge arbeiten. Deshalb sind Enums nützlich für Dinge wie Menüs, Zustände und Nachschlagetabellen.

{% include nav.html %}

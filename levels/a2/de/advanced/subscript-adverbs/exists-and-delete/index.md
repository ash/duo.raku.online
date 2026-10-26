---
title: Exists und delete
---

{% include menu.html %}

Das Adverb `:exists` macht aus einer Indizierung eine Frage. Gibt es einen Wert an diesem Schlüssel oder Index? Die Antwort ist `True` oder `False`. Das Adverb holt den Wert nicht:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

Das ist der richtige Weg, einen Schlüssel zu prüfen. Du kannst auch einfach `%h<plum>` lesen. Aber dann bekommst du einen undefinierten Wert. Oder du siehst bei manchen Daten den Unterschied nicht. Ist der Schlüssel "fehlend"? Oder ist er "vorhanden, aber undefiniert"?

Das Adverb `:delete` entfernt den Eintrag. Es gibt den Wert des Eintrags zurück:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

Der Eintrag `apple` ist weg. Du bekommst seinen Wert `1` zurück. Du kannst diesen Wert verwenden.

Beide Adverbien funktionieren auch bei Arrays. Dort verwendest du einen Index:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

Du entfernst ein Element aus der Mitte. Wie sieht das Array dann aus? Hier ist die Antwort:

```raku
say @a; # [10 (Any) 30]
```

Du verwendest also eine Schreibweise, und sie funktioniert immer gleich. Damit kannst du etwas über einen Container fragen. Du kannst den Container auch direkt verändern. Dafür brauchst du keine eigenen Methoden.

{% include nav.html %}

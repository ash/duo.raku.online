---
title: Exists und delete
---

{% include menu.html %}

Das Adverb `:exists` verwandelt eine Indizierung in eine Frage. Gibt es einen Wert an diesem Schlüssel oder Index? Das Adverb gibt einen Booleschen Wert zurück, aber es holt nicht den Wert selbst:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

Das ist der richtige Weg, um auf einen Schlüssel zu prüfen. Wenn du einfach `%h<plum>` liest, bekommst du einen undefinierten Wert. Je nach Daten kann das den Unterschied zwischen "fehlend" und "vorhanden, aber undefiniert" verbergen.

Das Adverb `:delete` entfernt den Eintrag und gibt dir seinen Wert zurück:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

Der Eintrag `apple` ist verschwunden. Du bekommst den gelöschten Wert `1` zurück, also kannst du ihn verwenden.

Beide Adverbien funktionieren auch bei Arrays, mit einem Index:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

Wie sieht das Array aus, nachdem ein Element in der Mitte entfernt wurde? Hier ist die Antwort:

```raku
say @a; # [10 (Any) 30]
```

Mit einer einheitlichen Schreibweise kannst du also Container direkt prüfen und verändern. Dafür brauchst du keine separaten Methoden.

{% include nav.html %}

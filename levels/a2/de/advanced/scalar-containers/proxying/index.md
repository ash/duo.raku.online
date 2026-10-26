---
title: Proxierung von Methodenaufrufen
---

{% include menu.html %}

Ein Skalar-Container ist eigentlich ein Objekt vom Typ `Scalar`. Meistens siehst du diesen Container gar nicht. Du musst nicht an ihn denken. Du kannst dir vorstellen, dass du direkt mit den Werten darin arbeitest.

Warum funktioniert das? Ein Skalar-Container gibt Methodenaufrufe an den Wert darin weiter. Nimm zum Beispiel die Zuweisung `my $lang = 'Raku'`. Danach kannst du die Methode `.chars` für die Variable aufrufen:

```raku
my $lang = 'Raku';
say $lang.chars; # 4
```

Das Programm gibt `4` aus. Das ist die Anzahl der Zeichen im String `'Raku'`. Rufe jetzt `.chars` für den Stringwert selbst auf, nicht für die Variable. Das Ergebnis ist genau gleich:

```raku
say 'Raku'.chars; # 4
```

Der Container gibt den `.chars`-Aufruf also still an seinen String weiter. Dann gibt er dir das Ergebnis zurück.

{% include nav.html %}

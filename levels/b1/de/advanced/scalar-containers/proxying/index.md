---
title: Proxierung von Methodenaufrufen
---

{% include menu.html %}

Tatsächlich ist ein Skalar-Container ein Objekt vom Typ `Scalar`. In den meisten Fällen bemerkst du den Container gar nicht, wenn du einen Skalar verwendest. Du musst nicht an ihn denken. Du kannst dir vorstellen, dass du direkt mit den Werten darin arbeitest.

Das funktioniert, weil ein Skalar-Container Methodenaufrufe an seinen Wert weitergibt. Zum Beispiel kannst du nach `my $lang = 'Raku'` die Methode `.chars` für die Variable aufrufen:

```raku
my $lang = 'Raku';
say $lang.chars; # 4
```

Das Programm gibt `4` aus, die Anzahl der Zeichen im String `'Raku'`. Rufe jetzt `.chars` direkt für den Stringwert auf, nicht für die Containervariable. Das Ergebnis ist genau dasselbe:

```raku
say 'Raku'.chars; # 4
```

Mit anderen Worten: Der Container gibt den `.chars`-Aufruf still an den String darin weiter. Dann gibt er dir das Ergebnis zurück.

{% include nav.html %}

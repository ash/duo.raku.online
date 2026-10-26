---
title: Datumsarithmetik
---

{% include menu.html %}

Du kannst mit Daten rechnen. Das macht viele alltägliche Berechnungen einfach.

Wenn du eine ganze Zahl zu einem Datum addierst, geht es um so viele Tage nach vorne. Das Ergebnis ist ein neues Datum. Monat und Jahr ändern sich automatisch, wenn das nötig ist:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

Wenn du ein Datum von einem anderen subtrahierst, bekommst du die Anzahl der Tage zwischen ihnen:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

Für größere Schritte gibt es die Methoden `later` und `earlier`. Sie nehmen benannte Argumente wie `:days`, `:months` oder `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

Diese Methoden rechnen richtig, auch wenn ein neuer Monat oder ein neues Jahr beginnt. So musst du dir nie Gedanken machen, wie viele Tage ein Monat hat.

{% include nav.html %}

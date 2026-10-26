---
title: Datumsarithmetik
---

{% include menu.html %}

Du kannst mit Daten rechnen. Dann sind viele Rechnungen aus dem Alltag einfach.

Du kannst eine ganze Zahl zu einem Datum addieren. Dann geht das Datum so viele Tage nach vorne. Du bekommst ein neues Datum. Wenn nötig, ändert Raku auch den Monat und das Jahr:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

Du kannst auch ein Datum von einem anderen subtrahieren. Du bekommst die Anzahl der Tage dazwischen:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

Für größere Schritte nimm die Methoden `later` und `earlier`. Sie nehmen benannte Argumente, wie `:days`, `:months` oder `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

Diese Methoden geben immer das richtige Datum. Sie funktionieren auch, wenn ein neuer Monat oder ein neues Jahr beginnt. Also musst du nie wissen, wie viele Tage ein Monat hat.

{% include nav.html %}

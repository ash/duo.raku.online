---
title: Wenn die Zahl innerhalb der Grenzen liegt
---

{% include menu.html %}

## Problem

Schreiben Sie ein Programm. Es fragt den Benutzer nach drei Zahlen: `$begin`, `$end` und `$n`. Dann prüft es, ob `$n` im Bereich `[$begin, $end)` liegt. Dieser Bereich enthält `$begin`, aber nicht `$end`. Das Programm gibt `True` oder `False` aus.

Die Zahlen erfüllen diese Bedingung: `$begin < $end + 1`. Darauf können Sie sich verlassen. Fügen Sie keinen Code zur Prüfung hinzu.

## Beispiel

Hier ist eine mögliche Ausgabe des Programms für beide Fälle:

```console
$ raku number-in-limits.raku
Von (einschließlich): 10
Bis (ausschließlich): 20
Was ist die Zahl? 15
True

$ raku number-in-limits.raku
Von (einschließlich): 10
Bis (ausschließlich): 20
Was ist die Zahl? 30
False
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}

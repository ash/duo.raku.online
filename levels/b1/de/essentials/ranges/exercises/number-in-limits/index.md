---
title: Wenn die Zahl innerhalb der Grenzen liegt
---

{% include menu.html %}

## Problem

Schreiben Sie ein Programm, das den Benutzer bittet, drei Zahlen einzugeben: `$begin`, `$end` und `$n`. Es gibt `True` aus, wenn `$n` im Bereich `[$begin, $end)` liegt, sonst `False`. Dieser Bereich schließt `$begin` ein, aber `$end` aus.

Sie können davon ausgehen, dass die eingegebenen Zahlen die Bedingung `$begin < $end + 1` erfüllen. Aber fügen Sie keinen Code hinzu, um das zu prüfen.

## Beispiel

Unten sehen Sie eine mögliche Ausgabe des Programms für beide Fälle:

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

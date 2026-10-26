---
title: Zwei Prüfungen planen
---

{% include menu.html %}

## Problem

Schreibe eine Testdatei, die `plan` benutzt, nicht `done-testing`. Gib mit `plan` am Anfang an, dass die Datei genau zwei Prüfungen enthält. Mach diese Prüfungen:

1. Prüfe mit `is-deeply`, dass das Sortieren der Liste `3, 1, 2` das Ergebnis `[1, 2, 3]` liefert.
1. Prüfe mit `is`, dass `10 % 3` gleich `1` ist.

Gib jeder Prüfung eine kurze Beschreibung, die du selbst wählst.

## Beispiel

Wenn die Beschreibungen `sorted` und `remainder` sind, gibt das Programm Folgendes aus:

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}

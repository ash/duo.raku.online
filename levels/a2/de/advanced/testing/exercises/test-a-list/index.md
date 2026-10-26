---
title: Zwei Prüfungen planen
---

{% include menu.html %}

## Problem

Schreibe eine Testdatei. Benutze `plan`, nicht `done-testing`. Sag mit `plan` am Anfang, dass die Datei genau zwei Prüfungen hat. Mach diese zwei Prüfungen:

1. Prüfe mit `is-deeply`, dass die Liste `3, 1, 2` nach dem Sortieren `[1, 2, 3]` ergibt.
1. Prüfe mit `is`, dass `10 % 3` gleich `1` ist.

Schreibe für jede Prüfung eine eigene kurze Beschreibung.

## Beispiel

Nimm die Beschreibungen `sorted` und `remainder`. Dann gibt das Programm das hier aus:

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}

---
title: Die Themenvariable
---

{% include menu.html %}

## Aufgabe

`$_` ist die *Topic*-Variable. Eine `for`-Schleife setzt sie der Reihe nach auf jedes Element. Ein Methodenaufruf wie `.chars` beginnt mit einem Punkt und hat kein Objekt davor. So ein Aufruf wirkt auf `$_`, also bedeutet `.chars` dasselbe wie `$_.chars`.

Geh mit einer Schleife über die drei Zeichenketten `'apple'`, `'fig'` und `'cherry'`. Gib für jede eine Zeile in der Form `<word> has <n> letters` aus. Verwende das Topic `$_` für das Wort. Für seine Länge verwende einen `.chars`-Aufruf mit einem Punkt am Anfang. Beobachte, wie `$_` der Reihe nach jede Zeichenkette wird.

## Beispiel

Das Programm gibt aus:

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}

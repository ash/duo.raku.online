---
title: Typisiert oder untypisiert
---

{% include menu.html %}

## Aufgabe

Deklariere zwei skalare Variablen nebeneinander: `$untyped`, die keinen Typ hat, und `$typed`, die den Typ `Int` hat. Gib beide mit `dd` aus, solange sie noch leer sind. Weise dann beiden `42` zu und gib beide noch einmal mit `dd` aus. Achte genau darauf, wie unterschiedlich `dd` die beiden Container beschreibt.

## Beispiel

Das Programm gibt das auf die Standardfehlerausgabe aus:

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}

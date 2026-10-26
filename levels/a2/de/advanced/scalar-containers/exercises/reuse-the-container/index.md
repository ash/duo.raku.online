---
title: Typisiert oder untypisiert
---

{% include menu.html %}

## Aufgabe

Deklariere zwei skalare Variablen nebeneinander. Die erste ist `$untyped`. Sie hat keinen Typ. Die zweite ist `$typed`. Sie hat den Typ `Int`. Gib beide mit `dd` aus, solange sie noch leer sind. Weise dann jeder von ihnen `42` zu. Gib beide noch einmal mit `dd` aus. Sieh dir die Ausgabe genau an. `dd` beschreibt die beiden Container auf verschiedene Weise.

## Beispiel

Das Programm schreibt das auf den Standardfehlerstream:

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}

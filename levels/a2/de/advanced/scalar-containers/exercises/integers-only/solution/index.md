---
title: 'Solution: Nur Ganzzahlen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my Int $cars;

$cars = 250.7.Int;
say $cars;
say $cars.WHAT;
```

🦋 Du findest den Quellcode in der Datei [integers-only.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/integers-only.raku).

## Ausgabe

```
250
(Int)
```

## Kommentare

1. Die Typeinschränkung `Int` in `my Int $cars` ist eine Regel für den Container. Der Container nimmt nur Ganzzahlen an. Du kannst `250.7` nicht direkt zuweisen. Dieser Wert ist ein `Rat`. Raku meldet einen Fehler zur Kompilierzeit, vor dem Start des Programms.

1. Das Programm ruft `.Int` für den rationalen Wert `250.7` auf. Das wandelt ihn in die Ganzzahl `250` um. Die Methode lässt einfach den Teil nach dem Dezimalpunkt weg. Der neue Wert passt in den Container. Beachte: Das ist nicht dasselbe wie Runden.

1. Die Pseudo-Methode `.WHAT` zeigt den Typ des gespeicherten Wertes. Der Typ ist `Int`.

{% include nav.html %}

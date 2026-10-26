---
title: 'Solution: Nur Ganzzahlen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung für die Aufgabe.

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

1. Die Typeinschränkung `Int` in `my Int $cars` lässt den Container nur Ganzzahlen annehmen. Eine direkte Zuweisung von `250.7`, einem `Rat`, würde einen Kompilierzeitfehler ergeben.

1. Der Aufruf von `.Int` für den rationalen Wert `250.7` wandelt ihn in die Ganzzahl `250` um. Er lässt einfach die Nachkommastellen weg. Der neue Wert passt in den Container. Verwechsle das nicht mit Runden.

1. Die Pseudo-Methode `.WHAT` zeigt, dass der Wert im Container den Typ `Int` hat.

{% include nav.html %}

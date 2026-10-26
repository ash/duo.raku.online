---
title: 'Solution: Typisiert oder untypisiert'
---

{% include menu.html %}

Hier ist eine mögliche Lösung für die Aufgabe.

## Code

```raku
my $untyped;
my Int $typed;

dd $untyped;
dd $typed;

$untyped = 42;
$typed = 42;

dd $untyped;
dd $typed;
```

🦋 Du findest den Quellcode in der Datei [reuse-the-container.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/reuse-the-container.raku).

## Ausgabe

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Kommentare

1. `dd` beschreibt die beiden Container unterschiedlich. Für den untypisierten gibt es nur `$untyped` aus. Für den typisierten setzt es den deklarierten Typ davor: `Int $typed`. Dieses Präfix ist genau das, was ein deklarierter Typ ändert.

1. Auch die leeren Werte sind verschieden. Ein untypisierter Container beginnt mit dem einfachen undefinierten Wert `Any`. Aber ein typisierter Container beginnt mit dem undefinierten Wert *seines* Typs, `Int`.

1. Nachdem du beiden `42` zugewiesen hast, sehen die Werte gleich aus. Aber `$typed` hat immer noch seinen Typ, also würde es nur Ganzzahlen annehmen. `$untyped` dagegen nimmt alles an.

{% include nav.html %}

---
title: 'Solution: Typisiert oder untypisiert'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `dd` zeigt die beiden Container auf verschiedene Weise. Für den untypisierten gibt es nur `$untyped` aus. Für den typisierten setzt es den deklarierten Typ davor: `Int $typed`. Genau das ändert ein deklarierter Typ.

1. Auch die leeren Werte sind verschieden. Ein untypisierter Container beginnt mit `Any`. Das ist der einfache undefinierte Wert. Ein typisierter Container beginnt mit dem undefinierten Wert *seines* Typs. Hier ist das `Int`.

1. Dann bekommen beide Variablen `42`. Jetzt sehen die Werte gleich aus. Aber `$typed` hat immer noch seinen Typ. Es nimmt nur Ganzzahlen an. `$untyped` nimmt jeden Wert an.

{% include nav.html %}

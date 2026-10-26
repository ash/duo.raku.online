---
title: 'Solution: Abschlussnachricht'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $count = 0;

END say "processed $count items";

$count++ for 1..3;
```

🦋 Du findest den Quellcode in der Datei [final-message.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/final-message.raku).

## Ausgabe

```
processed 3 items
```

## Kommentare

1. Der `END`-Phaser steht im Code vor der Schleife. Aber er läuft zuletzt, nach dem Hauptcode. Bis dahin hat die Schleife dreimal 1 zu `$count` addiert.

1. Der Phaser behält eine Verbindung zur Variablen `$count`. Also liest er den *letzten* Wert der Variablen. Er liest nicht die `0` aus der Zeile des Phasers. Das ist der übliche Grund, eine Zusammenfassung in `END` zu schreiben.

{% include nav.html %}

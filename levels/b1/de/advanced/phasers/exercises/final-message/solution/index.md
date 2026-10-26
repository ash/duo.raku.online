---
title: 'Solution: Abschlussnachricht'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der `END`-Phaser steht vor der Schleife, aber er läuft zuletzt. Er läuft, wenn der Hauptcode fertig ist. Bis dahin wurde `$count` dreimal erhöht.

1. Der Phaser bildet eine Closure über `$count`, das heißt, er behält eine Verbindung zur Variablen. Also liest er den *endgültigen* Wert. Er liest nicht die `0` aus der Zeile, in der der Phaser steht. Das ist der übliche Grund, eine Zusammenfassung in `END` zu schreiben.

{% include nav.html %}

---
title: 'Solution: Einen Block betreten'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
for 1..2 {
    ENTER say '--entering';
    say "body $_";
}
```

🦋 Du findest den Quellcode in der Datei [enter-a-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/enter-a-block.raku).

## Ausgabe

```
--entering
body 1
--entering
body 2
```

## Kommentare

1. `ENTER` läuft jedes Mal, wenn das Programm in den Block geht. Er läuft direkt vor dem Rumpf. Die Schleife geht in jeder Runde einmal in ihren Rumpf. Also gibt das Programm `--entering` vor jeder `body`-Zeile aus.

1. Das ist der Unterschied zwischen `ENTER` und `FIRST`. Mit `FIRST` läuft der Code nur einmal für die ganze Schleife. `ENTER` läuft jedes Mal, wenn das Programm in den Block geht.

{% include nav.html %}

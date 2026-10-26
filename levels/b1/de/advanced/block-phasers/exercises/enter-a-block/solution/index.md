---
title: 'Solution: Einen Block betreten'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `ENTER` läuft jedes Mal, wenn der Block betreten wird, direkt vor seinem Rumpf. Die Schleife betritt ihren Rumpf bei jedem Durchlauf einmal. Deshalb wird `--entering` vor jeder `body`-Zeile ausgegeben.

1. Das ist der Unterschied zwischen `ENTER` und `FIRST`. `FIRST` würde nur einmal für die ganze Schleife laufen. Aber `ENTER` läuft jedes Mal, wenn der Block betreten wird.

{% include nav.html %}

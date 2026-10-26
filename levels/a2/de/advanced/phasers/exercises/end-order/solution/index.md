---
title: 'Solution: Die Reihenfolge der ENDs'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
END say 'first END';
END say 'second END';

say 'body';
```

🦋 Du findest den Quellcode in der Datei [end-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/end-order.raku).

## Ausgabe

```
body
second END
first END
```

## Kommentare

1. Beide `END`-Phaser laufen nach dem Hauptcode. Also gibt das Programm zuerst `body` aus.

1. Mehrere `END`-Phaser laufen in der Reihenfolge „Last in, First out“. Das `second END` steht später im Code. Aber es läuft vor dem `first END`. Das ist wie beim Aufräumen in echten Programmen. Meistens musst du das Neueste zuerst rückgängig machen.

{% include nav.html %}

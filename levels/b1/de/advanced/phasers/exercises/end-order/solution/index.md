---
title: 'Solution: Die Reihenfolge der ENDs'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Beide `END`-Phaser laufen nach dem Hauptcode, also gibt das Programm zuerst `body` aus.

1. Mehrere `END`-Phaser laufen nach dem Prinzip Last in, First out. Das `second END` wird später deklariert, also läuft es vor dem `first END`. Das ist wie beim Aufräumen, das meistens zuerst das zuletzt Eingerichtete rückgängig machen muss.

{% include nav.html %}

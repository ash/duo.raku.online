---
title: 'Solution: Sofortige Auswertung erzwingen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
say (1 .. Inf).is-lazy;
say (eager 1..3).is-lazy;
say (lazy 1..3).is-lazy;
```

🦋 Du findest den Quellcode in der Datei [force-eager.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/force-eager.raku).

## Ausgabe

```
True
False
True
```

## Kommentare

1. Raku kann einen Bereich bis `Inf` nicht auf einmal berechnen. Also ist der Bereich lazy, und `.is-lazy` gibt `True` zurück.

1. Das `eager`-Präfix lässt Raku eine Liste sofort erzeugen. Also ist das Ergebnis nicht mehr lazy, und `.is-lazy` gibt `False` zurück. Das ist genau das Gegenteil davon, eine Liste als `lazy` zu markieren.

1. Nutze `eager` nicht mit einem Bereich ohne Ende. `eager 1 .. Inf` versucht, jedes Element sofort zu berechnen. Also hängt das Programm einfach. Es wird nie fertig. Es braucht immer mehr Speicher. Das geht so weiter, bis jemand das Programm stoppt. Nutze `eager` nur mit Listen, die sicher ein Ende haben.

1. Es geht auch andersherum. `lazy 1..3` markiert einen kurzen Bereich als lazy. Dieser Bereich hat ein Ende, aber er ist trotzdem lazy. Also gibt `.is-lazy` `True` zurück. Das Präfix macht jede Liste lazy, egal wie klein sie ist. Eine Liste muss nicht unendlich sein, um lazy zu sein.

{% include nav.html %}

---
title: 'Solution: Sofortige Auswertung erzwingen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Ein Bereich bis `Inf` kann nicht auf einmal berechnet werden, also ist er lazy. `.is-lazy` gibt `True` zurück.

1. Das `eager`-Präfix lässt Raku eine Liste sofort erzeugen. Deshalb ist das Ergebnis nicht mehr lazy. `.is-lazy` gibt `False` zurück. Das ist das direkte Gegenteil davon, eine Liste als `lazy` zu markieren.

1. Verwende `eager` nicht mit einem Bereich ohne Ende. `eager 1 .. Inf` versucht, jedes Element auf einmal zu berechnen. Deshalb hängt das Programm einfach und braucht immer mehr Speicher, bis es beendet wird. `eager` ist nur bei Listen sicher, von denen du weißt, dass sie endlich sind.

1. Das Umgekehrte geht auch. `lazy 1..3` markiert sogar einen kurzen, endlichen Bereich als lazy, also gibt `.is-lazy` `True` zurück. Das Präfix setzt das Laziness-Flag, egal wie klein die Liste ist. Eine Liste muss nicht unendlich sein, um lazy zu sein.

{% include nav.html %}

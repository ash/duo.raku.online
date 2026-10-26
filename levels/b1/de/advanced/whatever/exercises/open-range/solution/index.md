---
title: 'Solution: Ein offener Bereich'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
say (2, 4 ... *).head(4);
```

🦋 Den Quellcode findest du in der Datei [open-range.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/open-range.raku).

## Ausgabe

```
(2 4 6 8)
```

## Kommentare

1. Die Startwerte `2, 4` legen einen arithmetischen Schritt fest: Jede neue Zahl ist um zwei größer. Das `*` für sich allein am Ende bedeutet, dass die Sequenz nie endet.

1. `head(4)` nimmt nur die ersten vier Werte, `2, 4, 6, 8`. Die Sequenz ist lazy, also wird der endlose Rest nie berechnet. Hier bedeutet der Stern für sich allein „egal, ohne Obergrenze“.

{% include nav.html %}

---
title: 'Solution: Umkehren und laut rufen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
say 'raku'.flip.uc;
```

🦋 Du findest den Quellcode in der Datei [reverse-and-shout.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/reverse-and-shout.raku).

## Ausgabe

```
UKAR
```

## Kommentare

1. Die Methoden arbeiten von links nach rechts. Zuerst macht `flip` aus `'raku'` den String `'ukar'`. Dann macht `uc` daraus `'UKAR'`.

1. Jede Methode gibt einen neuen String zurück. Deshalb kannst du sie in einem Ausdruck zu einer Kette verbinden.

{% include nav.html %}

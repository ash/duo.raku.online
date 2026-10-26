---
title: 'Solution: Umkehren und laut rufen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Die Methoden laufen von links nach rechts. Zuerst kehrt `flip` den String `'raku'` zu `'ukar'` um, und dann macht `uc` daraus `'UKAR'`.

1. Jede Methode gibt einen neuen String zurück, deshalb kannst du sie in einem Ausdruck verketten.

{% include nav.html %}

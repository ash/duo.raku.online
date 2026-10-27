---
title: 'Lösung: Ausgeben ohne Zeilenumbruch'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
$*OUT.print('a');
$*OUT.print('b');
$*OUT.say('c');
```

🦋 Du findest den Quellcode in der Datei [print-without-newline.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/print-without-newline.raku).

## Ausgabe

```
abc
```

## Kommentare

1. `$*OUT.print` fügt nach seinem Text keinen Zeilenumbruch an, also bleiben `a` und `b` in einer Zeile.

1. `$*OUT.say` schreibt `c` und dann einen Zeilenumbruch, und das beendet die Zeile `abc`.

{% include nav.html %}

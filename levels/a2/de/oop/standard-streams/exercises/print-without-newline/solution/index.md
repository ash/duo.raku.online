---
title: 'Lösung: Ausgeben ohne Zeilenumbruch'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `$*OUT.print` schreibt seinen Text, fügt aber keinen Zeilenumbruch an. Also bleiben `a` und `b` in derselben Zeile.

1. `$*OUT.say` schreibt `c` und dann einen Zeilenumbruch. Das beendet die Zeile `abc`.

{% include nav.html %}

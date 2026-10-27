---
title: 'Lösung: Leeren Sie ein Verzeichnis'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
mkdir 'cache';
spurt 'cache/a.tmp', '1';
spurt 'cache/b.tmp', '2';

.unlink for 'cache'.IO.dir;
rmdir 'cache';

say 'cache'.IO.e;
```

🦋 Du findest den Quellcode in der Datei [clear-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/clear-a-directory.raku).

## Ausgabe

```
False
```

## Kommentare

1. `rmdir` entfernt nur ein leeres Verzeichnis. Also löscht das Programm zuerst die Dateien. `'cache'.IO.dir` gibt eine Liste der Einträge. `.unlink for …` löscht jeden davon.

1. Jetzt ist `cache` leer, und `rmdir` entfernt das Verzeichnis. Die letzte `.e`-Prüfung ergibt `False`. Also ist `cache` wirklich weg.

{% include nav.html %}

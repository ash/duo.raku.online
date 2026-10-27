---
title: 'Lösung: Leeren Sie ein Verzeichnis'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `rmdir` entfernt nur leere Verzeichnisse, also müssen die Dateien zuerst gelöscht werden. `'cache'.IO.dir` listet die Einträge auf, und `.unlink for …` löscht jeden einzelnen davon.

1. Da `cache` jetzt leer ist, entfernt `rmdir` das Verzeichnis. Die letzte `.e`-Prüfung ergibt `False`, was zeigt, dass `cache` weg ist.

{% include nav.html %}

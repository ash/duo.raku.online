---
title: 'Lösung: Löschen Sie eine Datei'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
spurt 'note.txt', 'temporary';
say 'note.txt'.IO.e;

unlink 'note.txt';
say 'note.txt'.IO.e;
```

🦋 Du findest den Quellcode in der Datei [delete-a-file.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/delete-a-file.raku).

## Ausgabe

```
True
False
```

## Kommentare

1. `spurt` legt die Datei an. Also ergibt die erste `.e`-Prüfung `True`.

1. `unlink` löscht die Datei. Dann ergibt die zweite `.e`-Prüfung `False`. Die Datei ist nicht mehr da. Beachten Sie: Wir nehmen `.e` und nicht `.f`. `.f` prüft den Typ des Pfads. Diese Prüfung wirft einen Fehler, wenn der Pfad nicht mehr existiert. Aber `.e` antwortet einfach `False`.

{% include nav.html %}

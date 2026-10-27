---
title: 'Lösung: Löschen Sie eine Datei'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `spurt` legt die Datei an, also ergibt die erste `.e`-Prüfung `True`.

1. `unlink` löscht die Datei. Dann ergibt die zweite `.e`-Prüfung `False`, weil die Datei weg ist. Beachten Sie, dass wir `.e` und nicht `.f` verwenden. Die Typprüfung `.f` würde bei einem Pfad, der nicht mehr existiert, einen Fehler werfen. Aber `.e` antwortet einfach `False`.

{% include nav.html %}

---
title: 'Lösung: Datei oder Verzeichnis?'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
spurt 'a.txt', 'x';

say 'a.txt'.IO.f;
say 'a.txt'.IO.d;
```

🦋 Du findest den Quellcode in der Datei [file-or-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/file-or-directory.raku).

## Ausgabe

```
True
False
```

## Kommentare

1. `.f` prüft auf eine gewöhnliche Datei. Für `a.txt` gibt `.f` also `True` zurück.

1. `.d` prüft auf ein Verzeichnis. Wir fragen `.d` nach genau demselben Pfad. Es gibt `False` zurück. `a.txt` ist eine Datei, kein Verzeichnis. Die zwei Prüfungen arbeiten als Paar. Sie zeigen, ob ein Pfad eine Datei oder ein Verzeichnis ist.

{% include nav.html %}

---
title: 'Lösung: Datei oder Verzeichnis?'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `.f` prüft, ob der Pfad eine gewöhnliche Datei ist, also gibt es für `a.txt` den Wert `True` zurück.

1. `.d` prüft auf ein Verzeichnis. Für genau denselben Pfad gibt es `False` zurück. Das liegt daran, dass `a.txt` eine Datei ist und kein Verzeichnis. Die beiden Prüfungen ergänzen sich. So unterscheiden Sie eine Datei von einem Verzeichnis.

{% include nav.html %}

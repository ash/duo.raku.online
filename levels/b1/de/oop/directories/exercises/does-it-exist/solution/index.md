---
title: 'Lösung: Gibt es sie?'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
say 'test.txt'.IO.e;
spurt 'test.txt', 'x';
say 'test.txt'.IO.e;
```

🦋 Du findest den Quellcode in der Datei [does-it-exist.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/does-it-exist.raku).

## Ausgabe

```
False
True
```

## Kommentare

1. `.e` prüft, ob ein Pfad existiert. Die erste Prüfung läuft, bevor wir die Datei anlegen, also gibt sie `False` zurück.

1. Dann legt `spurt` die Datei `test.txt` an, und die zweite Prüfung auf *demselben* Pfad gibt `True` zurück. Fragen Sie das Pfadobjekt noch einmal, und Sie bekommen den aktuellen Zustand des Dateisystems.

{% include nav.html %}

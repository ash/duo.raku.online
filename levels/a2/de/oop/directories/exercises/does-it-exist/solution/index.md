---
title: 'Lösung: Gibt es sie?'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `.e` prüft, ob ein Pfad existiert. Die erste Prüfung kommt vor dem Anlegen der Datei. Also gibt sie `False` zurück.

1. Dann legt `spurt` die Datei `test.txt` an. Die zweite Prüfung läuft auf *demselben* Pfad. Jetzt gibt sie `True` zurück. Sie können das Pfadobjekt noch einmal fragen. Seine Antwort zeigt den jetzigen Stand des Dateisystems.

{% include nav.html %}

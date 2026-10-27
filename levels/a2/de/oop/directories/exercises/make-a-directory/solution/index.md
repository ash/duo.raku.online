---
title: 'Lösung: Legen Sie ein Verzeichnis an'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
mkdir 'reports';
spurt 'reports/data.txt', 'x';

say 'reports'.IO.d;
say 'reports/data.txt'.IO.e;
```

🦋 Du findest den Quellcode in der Datei [make-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/make-a-directory.raku).

## Ausgabe

```
True
True
```

## Kommentare

1. `mkdir` legt das Verzeichnis an. `.IO.d` zeigt, dass `reports` ein Verzeichnis ist.

1. Jetzt existiert das Verzeichnis. Also können wir eine Datei hineinschreiben. Dafür geben wir einen Pfad mit dem Namen des Verzeichnisses an: `reports/data.txt`. Dann prüfen wir diesen Pfad mit `.e`. Die Prüfung zeigt, dass die Datei im neuen Verzeichnis ist.

1. Die Reihenfolge ist wichtig. `spurt` legt fehlende Verzeichnisse **nicht** für Sie an. Versuchen Sie, in `reports/data.txt` zu schreiben, bevor das Verzeichnis `reports` existiert. Sie bekommen einen Fehler wie `Failed to open file … : No such file or directory`. Legen Sie also zuerst das Verzeichnis an, wie `mkdir` es hier tut. Dann funktioniert das Schreiben. Und `mkdir` hat noch einen Vorteil. Es legt auch fehlende Verzeichnisse in der Mitte eines Pfads an. Zum Beispiel legt `mkdir 'reports/2026'` die ganze Kette von Verzeichnissen mit einem Aufruf an.

{% include nav.html %}

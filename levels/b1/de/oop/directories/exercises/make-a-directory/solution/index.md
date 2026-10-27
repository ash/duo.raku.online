---
title: 'Lösung: Legen Sie ein Verzeichnis an'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `mkdir` legt das Verzeichnis an, und `.IO.d` zeigt, dass `reports` wirklich ein Verzeichnis ist.

1. Das Verzeichnis existiert jetzt, also können wir eine Datei hineinschreiben. Dafür geben wir einen Pfad an, der den Namen des Verzeichnisses enthält: `reports/data.txt`. Dann zeigt `.e` auf diesem Pfad, dass die Datei jetzt im neuen Verzeichnis ist.

1. Die Reihenfolge ist wichtig: `spurt` legt fehlende Verzeichnisse **nicht** für Sie an. Versuchen Sie, in `reports/data.txt` zu schreiben, bevor das Verzeichnis `reports` existiert. Das scheitert mit einem Fehler wie `Failed to open file … : No such file or directory`. Das Schreiben funktioniert nur, weil `mkdir` zuerst das Verzeichnis anlegt. Zum Glück legt `mkdir` auch alle fehlenden Verzeichnisse in der Mitte eines Pfads an. Bei einem verschachtelten Pfad wie in `mkdir 'reports/2026'` baut also ein einziger Aufruf die ganze Kette.

{% include nav.html %}

---
title: Ein Verzeichnis auflisten
translations_gpt:
---

{% include menu.html %}

Die Routine `dir` gibt die Einträge eines Verzeichnisses zurück, jeden als Pfadobjekt. Ihre Reihenfolge ist nicht fest. Darum sortiert man das Ergebnis oft, und dann hat die Ausgabe immer dieselbe Reihenfolge.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

Das Programm gibt die sortierten Namen der Dateien im Verzeichnis `box` aus:

```
a.txt
b.txt
```

Jeder Eintrag ist ein vollständiges Pfadobjekt. Die Methode `basename` gibt nur den letzten Namen zurück, ohne den Verzeichnisteil. Sie können einem Pfadobjekt dieselben Fragen stellen wie vorher: `.f`, `.d` und `.e`. So können Sie zum Beispiel ein Verzeichnis durchgehen und nur die Dateien auswählen.

{% include nav.html %}

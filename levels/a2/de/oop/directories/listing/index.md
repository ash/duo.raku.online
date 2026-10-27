---
title: Ein Verzeichnis auflisten
translations_gpt:
---

{% include menu.html %}

Die Routine `dir` gibt die Einträge eines Verzeichnisses zurück. Ein Eintrag ist eine Datei oder ein Verzeichnis darin. Jeder Eintrag ist ein Pfadobjekt. Die Reihenfolge der Einträge ist nicht fest. Darum sortiert man das Ergebnis oft. Dann kommt die Ausgabe immer in derselben Reihenfolge.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

Dieses Programm gibt die Namen der Dateien im Verzeichnis `box` aus. Die Namen sind sortiert:

```
a.txt
b.txt
```

Jeder Eintrag ist ein vollständiges Pfadobjekt. Die Methode `basename` gibt nur den Namen am Ende zurück. Den Verzeichnisteil gibt sie nicht zurück. Sie können einem Pfadobjekt alle Fragen von vorhin stellen: `.f`, `.d`, `.e`. So können Sie zum Beispiel nur die Dateien aus einem Verzeichnis nehmen.

{% include nav.html %}

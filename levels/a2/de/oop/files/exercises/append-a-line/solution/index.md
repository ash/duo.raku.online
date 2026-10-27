---
title: 'Lösung: Bauen Sie ein Protokoll auf'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
spurt 'log.txt', "start\n";

for 1..3 -> $i {
    spurt 'log.txt', "entry $i\n", :append;
}

print slurp 'log.txt';
```

🦋 Du findest den Quellcode in der Datei [append-a-line.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/append-a-line.raku).

## Ausgabe

```
start
entry 1
entry 2
entry 3
```

## Kommentare

1. Das erste `spurt` legt eine neue Datei mit der Zeile `start` an.

1. Jedes `spurt` in der Schleife hat `:append`. Also setzt es seine Zeile hinter den alten Inhalt. Es ersetzt die Datei nicht. Genau so wächst eine Protokolldatei. Jede Runde der Schleife fügt am Ende eine weitere Zeile hinzu. Jeder Lauf eines Programms kann auf die gleiche Weise eine Zeile hinzufügen.

1. Ohne `:append` überschreibt jede Runde die Datei. Dann bleibt nur die letzte Zeile übrig.

{% include nav.html %}

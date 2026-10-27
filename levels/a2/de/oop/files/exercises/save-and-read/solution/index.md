---
title: 'Lösung: Sichern und lesen'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
spurt 'number.txt', "42\n";

my $n = slurp('number.txt').trim.Int;
say $n * 2;
```

🦋 Du findest den Quellcode in der Datei [save-and-read.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/save-and-read.raku).

## Ausgabe

```
84
```

## Kommentare

1. `spurt` legt die Datei an und schreibt die Zeichenkette hinein. `slurp` liest die ganze Datei zurück in eine Zeichenkette. Zusammen machen sie beide Aufgaben. Die beiden speichern Daten und laden sie wieder.

1. `slurp` gibt Text zurück: `"42\n"`. Also entfernen wir mit `trim` den Zeilenumbruch am Ende. Dann rufen wir `.Int` auf, um den Text in eine Zahl zu verwandeln. Jetzt können wir damit rechnen. Das Ergebnis von `42 * 2` ist `84`.

1. Aber das Programm funktioniert auch ohne `.trim.Int`.

{% include nav.html %}

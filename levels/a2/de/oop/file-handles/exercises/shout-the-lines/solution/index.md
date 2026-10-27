---
title: 'Lösung: Nummerieren Sie die Zeilen'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
spurt 'words.txt', "apple\nbanana\ncherry\n";

my $n = 0;
for 'words.txt'.IO.lines -> $line {
    $n++;
    say "$n: $line";
}
```

🦋 Du findest den Quellcode in der Datei [shout-the-lines.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/shout-the-lines.raku).

## Ausgabe

```
1: apple
2: banana
3: cherry
```

## Kommentare

1. `spurt` schreibt die drei Wörter in die Datei. Zeilenumbrüche trennen die Wörter.

1. `.IO.lines` gibt die Zeilen eine nach der anderen. Die Zeilen haben am Ende keinen Zeilenumbruch. Wir haben einen Zähler `$n`. Jede Runde der Schleife erhöht ihn um 1. So gibt das Programm jede Zeile mit ihrer Stelle in der Datei aus.

{% include nav.html %}

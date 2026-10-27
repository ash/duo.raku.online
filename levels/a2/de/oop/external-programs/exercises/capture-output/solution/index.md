---
title: 'Lösung: Fangen Sie die Ausgabe auf'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $proc = run 'echo', 'hello world raku', :out;
my $output = $proc.out.slurp(:close).trim;
say $output.words.elems;
```

🦋 Du findest den Quellcode in der Datei [capture-output.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/capture-output.raku).

## Ausgabe

```
3
```

## Kommentare

1. `:out` schickt die Ausgabe in das `Proc`. Sie geht nicht auf den Bildschirm. `.out.slurp(:close)` liest sie ganz zurück. `.trim` entfernt den Zeilenumbruch am Ende. `echo` fügt diesen Zeilenumbruch an.

1. Jetzt ist die Ausgabe eine normale Zeichenkette in unserem Programm. Wir arbeiten damit wie mit allen anderen Daten. `.words.elems` teilt die Zeichenkette an den Leerzeichen. Dann zählt es die Teile. Das Ergebnis ist `3`. Darum fangen wir Ausgabe auf. Das externe Programm wird ein Teil unserer Arbeit. Wir benutzen sein Ergebnis in den nächsten Schritten.

{% include nav.html %}

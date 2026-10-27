---
title: 'Lösung: Schreiben mit einem Handle'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $fh = open 'out.txt', :w;
$fh.say($_) for 1..3;
$fh.close;

print slurp 'out.txt';
```

🦋 Du findest den Quellcode in der Datei [write-with-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/write-with-a-handle.raku).

## Ausgabe

```
1
2
3
```

## Kommentare

1. `open` mit dem Schalter `:w` gibt einen Handle zum Schreiben. Der Handle bleibt während der ganzen Schleife offen. Also fügt jedes `$fh.say` eine weitere Zeile hinzu. Hier ist ein Handle besser als `spurt`. `spurt` öffnet die Datei jedes Mal neu.

1. `close` schreibt alle Daten auf die Festplatte. Also liest das `slurp` danach alle drei Zeilen zurück.

{% include nav.html %}

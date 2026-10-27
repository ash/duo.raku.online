---
title: 'Lösung: Schreiben mit einem Handle'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `open` mit dem Schalter `:w` gibt einen Handle zum Schreiben. Der Handle bleibt während der ganzen Schleife offen, also fügt jedes `$fh.say` eine weitere Zeile hinzu. Hier ist ein Handle besser als `spurt`, das die Datei jedes Mal neu öffnen würde.

1. `close` speichert die Daten auf der Festplatte. Also liest das nächste `slurp` alle drei Zeilen zurück.

{% include nav.html %}

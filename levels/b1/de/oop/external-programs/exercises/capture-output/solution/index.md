---
title: 'Lösung: Fangen Sie die Ausgabe auf'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `:out` schickt die Ausgabe des Programms in das `Proc` statt auf den Bildschirm. `.out.slurp(:close)` liest sie vollständig zurück. `.trim` entfernt den Zeilenumbruch, den `echo` am Ende anfügt.

1. Jetzt ist die Ausgabe eine gewöhnliche Zeichenkette in unserem Programm. Wir behandeln sie wie alle anderen Daten. `.words.elems` teilt sie am Leerraum und zählt die Teile, was `3` ergibt. Genau darum geht es beim Auffangen der Ausgabe. Das externe Programm wird zu einem Baustein, und wir verarbeiten sein Ergebnis weiter.

{% include nav.html %}

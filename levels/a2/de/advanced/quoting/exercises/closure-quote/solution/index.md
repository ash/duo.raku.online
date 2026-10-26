---
title: 'Solution: Ein Closure in einem q-String'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $x = 10;
say q:c/$x squared is {$x ** 2}/;
```

🦋 Du findest den Quellcode in der Datei [closure-quote.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/closure-quote.raku).

## Ausgabe

```
$x squared is 100
```

## Kommentare

1. Die `q`-Form lässt den Text normalerweise, wie er ist. Das Adverb `:c` (Closure) ändert das. Es schaltet die Interpolation von `{ … }`-Code im Text ein. In den geschweiften Klammern ist `$x` echter Code. Deshalb ergibt `{$x ** 2}` den Wert `100`.

1. Das `$x` außerhalb der geschweiften Klammern bleibt genau, wie es ist. Der Grund: Das Skalar-Adverb `:s` ist *nicht* eingeschaltet. Genau das ist die Idee von einem Adverb für jede Funktion. Du bekommst Code im Text. Aber du schaltest nicht auch die Interpolation von `$`-Variablen ein.

1. Du kannst mehrere Adverbien zusammen benutzen. Füge auch `:s` hinzu. Dann wird auch das erste `$x` interpoliert. Jetzt sind beide Funktionen eingeschaltet:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}

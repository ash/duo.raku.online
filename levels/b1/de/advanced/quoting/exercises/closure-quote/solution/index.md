---
title: 'Solution: Ein Closure in einem q-String'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Die `q`-Form lässt normalerweise den ganzen Text, wie er ist. Das Adverb `:c` (Closure) schaltet darin die Interpolation von `{ … }`-Code ein. In den geschweiften Klammern ist `$x` echter Code, deshalb ergibt `{$x ** 2}` den Wert `100`.

1. Das `$x` außerhalb der geschweiften Klammern bleibt genau so, wie es geschrieben ist. Das liegt daran, dass das Skalar-Adverb `:s` *nicht* eingeschaltet ist. Genau das ist der Sinn davon, für jede Funktion ein eigenes Adverb zu haben. Du bekommst Code im String, ohne auch die `$`-Interpolation einzuschalten.

1. Du kannst Adverbien kombinieren. Wenn du auch `:s` hinzufügst, wird auch das erste `$x` interpoliert. Jetzt sind beide Funktionen gleichzeitig eingeschaltet:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}

---
title: 'Lösung: Anzahl der Befehlszeilenargumente'
---

{% include menu.html %}

Die Anzahl der Argumente kommt weiterhin aus `@*ARGS.elems`. Aber diesmal müssen wir etwas damit tun und sie nicht nur ausgeben. Speichern Sie die Anzahl in einer Variablen. Dann wählen Sie mit einem ternären Operator das passende Wort:

## Code

```raku
my $n = @*ARGS.elems;
my $word = $n == 1 ?? 'argument' !! 'arguments';
say "You passed $n $word.";
```

🦋 Finden Sie das Programm in der Datei [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/number-of-command-line-arguments.raku).

## Ausgabe

Testen Sie die drei interessanten Fälle: kein Argument, genau eines und viele. Nur der zweite Fall verwendet die Einzahlform.

```console
$ raku exercises/positionals/number-of-command-line-arguments.raku
You passed 0 arguments.

$ raku exercises/positionals/number-of-command-line-arguments.raku solo
You passed 1 argument.

$ raku exercises/positionals/number-of-command-line-arguments.raku one 2 three 4 five 6 seven
You passed 7 arguments.
```

{% include nav.html %}

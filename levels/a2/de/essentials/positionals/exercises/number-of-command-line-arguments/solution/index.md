---
title: 'Lösung: Anzahl der Befehlszeilenargumente'
---

{% include menu.html %}

Die Anzahl der Argumente bekommen wir wieder aus `@*ARGS.elems`. Aber diesmal geben wir sie nicht nur aus. Wir müssen mehr damit tun. Speichern Sie die Anzahl in einer Variablen. Dann wählen Sie mit einem ternären Operator das richtige Wort:

## Code

```raku
my $n = @*ARGS.elems;
my $word = $n == 1 ?? 'argument' !! 'arguments';
say "You passed $n $word.";
```

🦋 Finden Sie das Programm in der Datei [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/number-of-command-line-arguments.raku).

## Ausgabe

Testen Sie drei interessante Fälle: kein Argument, ein Argument und viele Argumente. Nur der zweite Fall verwendet die Einzahl, `argument`.

```console
$ raku exercises/positionals/number-of-command-line-arguments.raku
You passed 0 arguments.

$ raku exercises/positionals/number-of-command-line-arguments.raku solo
You passed 1 argument.

$ raku exercises/positionals/number-of-command-line-arguments.raku one 2 three 4 five 6 seven
You passed 7 arguments.
```

{% include nav.html %}

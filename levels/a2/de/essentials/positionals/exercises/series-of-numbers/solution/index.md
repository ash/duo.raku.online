---
title: 'Solution: Eine Reihe von Zahlen drucken'
---

{% include menu.html %}

Sie können dieses Problem auf mehr als eine Art lösen.

## Code 1

Die erste Lösung ist kürzer. Sie passt auch besser zum Stil von Raku.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

.say for $begin .. $end;
```

🦋 Finde das Programm in der Datei [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Code 2

Die zweite Lösung verwendet die `loop`-Anweisung.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Finde das Programm in der Datei [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Wie Sie sehen, ist die erste Variante viel kürzer. Sie zeigt die Idee auch klarer.

## Diskussion

Die erste Variante verwendet die [postfixe Form der `for`-Schleife](/de/essentials/loops/postfix-for). In dieser Form steht `for` nach der Anweisung. Das zweite Programm verwendet `loop`.

## Ausgabe

Führen Sie das Programm aus. Geben Sie die beiden Zahlen in der Konsole ein. Beide Varianten geben das gleiche Ergebnis aus.

```console
$ raku exercises/positionals/series-of-numbers.raku
Begin: 15
End: 19
15
16
17
18
19
```

{% include nav.html %}

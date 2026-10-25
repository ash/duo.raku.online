---
title: 'Solution: Eine Reihe von Zahlen drucken'
---

{% include menu.html %}

Es gibt mehr als einen Weg, dieses Problem zu lösen.

## Code 1

Die erste Lösung ist kürzer und typischer für Raku.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

.say for $begin .. $end;
```

🦋 Finde das Programm in der Datei [series-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers.raku).

## Code 2

Eine zweite mögliche Lösung verwendet die `loop`-Anweisung.

```raku
my $begin = prompt 'Begin: ';
my $end = prompt 'End: ';

loop (my $n = $begin; $n <= $end; $n++) {
    say $n;
}
```

🦋 Finde das Programm in der Datei [series-of-numbers-loop.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/series-of-numbers-loop.raku).

Wie Sie sehen, ist die erste Variante viel kürzer und zeigt die Idee klarer.

## Diskussion

Die erste Variante des Programms verwendet die [postfixe Form der `for`-Schleife](/de/essentials/loops/postfix-for). Das zweite Programm verwendet eine `loop`-Schleife.

## Ausgabe

Führen Sie das Programm aus und geben Sie die beiden Zahlen in der Konsole ein. Beide Varianten erzeugen die gleiche Ausgabe.

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

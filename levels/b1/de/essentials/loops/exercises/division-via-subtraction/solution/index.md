---
title: 'Solution: Division durch Subtraktion'
---

{% include menu.html %}

Division ist einfach Subtraktion, viele Male hintereinander. Das Programm hat eine `while`-Schleife, die `$b` von `$a` abzieht. Sie wiederholt das, solange `$a` noch nicht kleiner als `$b` ist. Die Variable `$n` zählt die Runden der Schleife. Diese Zahl ist auch das Ergebnis.

## Code

Hier ist das vollständige Programm:

```raku
my $a = 175;
my $b = 25;

my $n = 0;
while $a >= $b {
    $a -= $b;
    $n++;
}

say $n;
```

🦋 Finde das Programm in der Datei [division-via-subtraction.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/division-via-subtraction.raku).

## Ausgabe

Führen Sie das Programm ein paar Mal aus. Beginnen Sie mit den gegebenen Werten, bei denen die Division genau aufgeht:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Probieren Sie dann andere Werte aus. Setzen Sie zum Beispiel `$b` auf `20` und prüfen Sie, ob das Ergebnis richtig ist:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}

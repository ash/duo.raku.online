---
title: 'Solution: Division durch Subtraktion'
---

{% include menu.html %}

Division ist Subtraktion, immer wieder. Das Programm hat eine `while`-Schleife. Die Schleife zieht `$b` von `$a` ab. Sie wiederholt das, solange `$a` nicht kleiner als `$b` ist. Die Variable `$n` zählt die Runden der Schleife. Diese Zahl ist auch das Ergebnis, das wir brauchen.

## Code

Hier ist das ganze Programm:

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

Führen Sie das Programm ein paar Mal aus. Verwenden Sie zuerst die gegebenen Werte. Mit ihnen geht die Division genau auf:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Probieren Sie dann andere Werte aus. Ändern Sie zum Beispiel `$b` auf `20` und prüfen Sie, ob das Ergebnis richtig ist:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}

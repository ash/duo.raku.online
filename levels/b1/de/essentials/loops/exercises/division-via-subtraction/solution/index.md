---
title: 'Solution: Division durch Subtraktion'
---

{% include menu.html %}

Division ist wiederholte Subtraktion. Das Programm hat eine `while`-Schleife, die `$b` von `$a` abzieht und dies wiederholt, solange der aktuelle Wert von `$a` nicht kleiner als `$b` ist. Die Variable `$n` zählt die Iterationen und ist zugleich das Ergebnis, das wir brauchen.

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

Versuchen Sie dann zum Beispiel, `$b` auf `20` zu ändern, und prüfen Sie, ob das Ergebnis korrekt ist:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}

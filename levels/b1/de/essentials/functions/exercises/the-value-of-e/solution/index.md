---
title: 'Solution: Der Wert von e'
---

{% include menu.html %}

## Haftungsausschluss

Raku hat eine eingebaute Konstante `e`. Sie liefert sofort die Antwort auf diese Aufgabe. Die Lösung unten ist nur zum Lernen gedacht.

## Code

Die Formel in dieser Aufgabe enthält eine Fakultät. Wir haben schon mindestens zwei Wege, sie zu berechnen, und weitere werden folgen. Das Programm unten definiert zwei Funktionen. Eine berechnet die Fakultät, und die andere berechnet die Teilsumme der Formel.

Die Funktion muss auch ohne Argumente funktionieren. In diesem Fall macht die Schleife eine feste Anzahl von Durchläufen. Deshalb können wir dem Parameter einen [Standardwert](/de/essentials/functions/default-values) geben: `sub e-approx($max = 100)`.

Beachten Sie im Code, dass beide Funktionen ihre Ergebnisse auf ähnliche Weise aufbauen. Sie verwenden eine [postfix `for` Schleife](/de/essentials/loops/postfix-for) über einen [Bereich](/de/essentials/ranges).

Hier ist die Lösung:

```raku
sub factorial($n) {
    my $f = 1;
    $f *= $_ for 1..$n;

    return $f;
}

sub e-approx($max = 100) {
    my $e = 1;
    $e += 1 / factorial($_) for 1..$max;

    return $e;
}

say e-approx(10);
say e-approx();
```

🦋 Finden Sie das Programm in der Datei [the-value-of-e.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/the-value-of-e.raku).

## Ausgabe

Mit 10 und 100 Durchläufen der Schleife bekommen wir diese Ergebnisse. Probieren Sie auch andere Werte für `$max` aus.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}

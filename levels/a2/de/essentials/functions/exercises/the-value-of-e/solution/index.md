---
title: 'Solution: Der Wert von e'
---

{% include menu.html %}

## Haftungsausschluss

Raku hat schon eine Konstante `e`. Diese Konstante gibt sofort die Antwort auf diese Aufgabe. Die Lösung unten ist nur zum Lernen.

## Code

Die Formel enthält eine Fakultät. Wir kennen schon mindestens zwei Wege, eine Fakultät zu berechnen. Später kommen noch mehr Wege. Das Programm unten hat zwei Funktionen. Eine Funktion berechnet die Fakultät. Die andere addiert die ersten Elemente der Formel.

Die Funktion muss auch ohne Argumente funktionieren. Dann macht die Schleife eine feste Anzahl von Durchläufen. Deshalb geben wir dem Parameter einen [Standardwert](/de/essentials/functions/default-values): `sub e-approx($max = 100)`.

Sehen Sie sich den Code an. Beide Funktionen bauen ihr Ergebnis auf ähnliche Weise auf. Jede hat [`for` am Ende einer Zeile](/de/essentials/loops/postfix-for). Diese Schleife geht über einen [Bereich](/de/essentials/ranges).

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

Hier sind die Ergebnisse für 10 und 100 Durchläufe der Schleife. Probieren Sie auch andere Werte für `$max`.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}

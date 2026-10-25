---
title: 'Solution: Die Summe drucken'
---

{% include menu.html %}

Das Programm hat nur eine Funktion, `MAIN`. Sie nimmt zwei Argumente mit Typen an. Beide Argumente bekommen ihre Werte von der Befehlszeile.

## Code

Hier ist die Lösung:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Finde das Programm in der Datei [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Ausgabe

Versuche verschiedene Zahlen:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Du kannst das Programm auch ohne Argumente ausführen. Oder du nimmst Argumente mit anderen Typen. Schau, was passiert. Der zweite Teil des Kurses zeigt, wie man mit solchen Fällen umgeht.

{% include nav.html %}

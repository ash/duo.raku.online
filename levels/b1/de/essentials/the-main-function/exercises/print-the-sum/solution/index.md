---
title: 'Solution: Die Summe drucken'
---

{% include menu.html %}

Das Programm hat nur eine einzige Funktion `MAIN`. Sie nimmt zwei typisierte Argumente an. Beide werden aus den Argumenten der Befehlszeile erstellt.

## Code

Hier ist die Lösung:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Finde das Programm in der Datei [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Ausgabe

Versuche verschiedene Eingabezahlen:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Du kannst das Programm auch ohne Argumente oder mit Argumenten anderer Typen ausführen. Schau, was dann passiert. Im zweiten Teil des Kurses sprechen wir darüber, wie man mit solchen Fällen umgeht.

{% include nav.html %}

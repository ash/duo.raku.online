---
title: 'Solution: Schaltjahr'
---

{% include menu.html %}

## Haftungsausschluss

Die Lösung unten ist als Übung mit bedingten Prüfungen gedacht. Für echte Aufgaben können Sie die Methoden der eingebauten Klasse `Date` kennenlernen. Diese Klasse kommt im zweiten Teil des Kurses.

## Lösung

Dieser Algorithmus zeigt, ob ein Jahr ein Schaltjahr ist:

1. Wenn das Jahr nicht durch 4 teilbar ist => Gemeinjahr
1. Wenn das Jahr nicht durch 100 teilbar ist => Schaltjahr
1. Wenn das Jahr nicht durch 400 teilbar ist => Gemeinjahr
1. Andernfalls => Schaltjahr

Beachten Sie, dass Raku eingebaute Typen für die Arbeit mit Datum und Uhrzeit hat. Deshalb kommen wir im zweiten Teil des Kurses auf diese Aufgabe zurück.

## Code 1

Die erste Lösung macht genau das, was die Schritte oben sagen:

```raku
my $year = prompt 'Jahr: ';

if $year % 4 {
    say 'Gemeinjahr';
}
elsif $year % 100 {
    say 'Schaltjahr';
}
elsif $year % 400 {
    say 'Gemeinjahr';
}
else {
    say 'Schaltjahr';
}
```

🦋 Finden Sie das Programm in der Datei [leap-year.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year.raku).

## Code 2

In der zweiten Lösung steht die ganze Logik in einem einzigen Ausdruck. Die Klammern sind nicht immer nötig, aber hier machen sie den Code klarer.

```raku
my $year = prompt 'Jahr: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Schaltjahr' !! 'Gemeinjahr';
```

🦋 Finden Sie das Programm in der Datei [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Ausgabe

Testen Sie beide Programme mit den wichtigsten Fällen, zum Beispiel 1900, 2000, 2020 und 2021.

```console
$ raku exercises/conditional-checks/leap-year.raku
Jahr: 1900
Gemeinjahr

$ raku exercises/conditional-checks/leap-year.raku
Jahr: 2000
Schaltjahr
```

```console
$ raku exercises/conditional-checks/leap-year-formula.raku
Jahr: 2020
Schaltjahr

$ raku exercises/conditional-checks/leap-year-formula.raku
Jahr: 2021
Gemeinjahr
```

%%tipblock
## `%%` vs `%`

Beachten Sie, dass die Operatoren `%%` und `%` in einem booleschen Kontext umgekehrte Ergebnisse geben. Das können Sie nutzen, um den richtigen Operator zu wählen. Dann müssen Sie keinen Vergleich mit null schreiben.

```raku
say ?(100 % 3);    # Wahr
say 100 % 3 != 0;  # Wahr

say ?(100 %% 3);   # Falsch
say 100 %% 3 != 0; # Falsch
```
%%/tipblock

{% include nav.html %}

---
title: 'Solution: Schaltjahr'
---

{% include menu.html %}

## Haftungsausschluss

Die Lösung unten ist zum Üben. Mit ihr üben Sie bedingte Prüfungen. Raku hat eine eingebaute Klasse `Date`. Im echten Leben können Sie ihre Methoden lernen. Wir lernen diese Klasse im zweiten Teil des Kurses kennen.

## Lösung

Diese Schritte zeigen, ob ein Jahr ein Schaltjahr ist:

1. Wenn das Jahr nicht durch 4 teilbar ist => Gemeinjahr
1. Wenn das Jahr nicht durch 100 teilbar ist => Schaltjahr
1. Wenn das Jahr nicht durch 400 teilbar ist => Gemeinjahr
1. Andernfalls => Schaltjahr

Raku hat eingebaute Typen für Datum und Uhrzeit. Sie können sie auch benutzen. Deshalb gibt es diese Aufgabe im zweiten Teil des Kurses noch einmal.

## Code 1

Die erste Lösung folgt genau den Schritten oben:

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

Die zweite Lösung packt die ganze Logik in einen Ausdruck. Sie brauchen die runden Klammern nicht immer. Wir setzen sie hier, damit der Code klarer wird.

```raku
my $year = prompt 'Jahr: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Schaltjahr' !! 'Gemeinjahr';
```

🦋 Finden Sie das Programm in der Datei [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Ausgabe

Probieren Sie beide Programme mit den wichtigsten Fällen aus. Nehmen Sie zum Beispiel 1900, 2000, 2020 und 2021.

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

Manchmal braucht Raku `True` oder `False`. Das nennen wir einen booleschen Kontext. In einem booleschen Kontext geben `%%` und `%` umgekehrte Ergebnisse. Wenn einer `True` ergibt, ergibt der andere `False`. Diese Tatsache können Sie nutzen. Wählen Sie einen der beiden Operatoren. Dann müssen Sie keinen Vergleich mit null schreiben.

```raku
say ?(100 % 3);    # Wahr
say 100 % 3 != 0;  # Wahr

say ?(100 %% 3);   # Falsch
say 100 %% 3 != 0; # Falsch
```
%%/tipblock

{% include nav.html %}

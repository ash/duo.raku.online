---
title: 'Solution: Apfelteilung'
---

{% include menu.html %}

Hier ist die Lösung für das Problem.

## Code

```raku
my $N = 3;
my $K = 11;

my $gets = $K div $N;
my $remains = $K % $N;

say "Jede Person bekommt $gets Apfel/Äpfel.";
say "Es bleiben $remains Apfel/Äpfel übrig.";
```

🦋 Du findest den vollständigen Code in der Datei [apple-sharing.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/apple-sharing.raku).

## Ausgabe

Mit den Eingabezahlen 3 und 11 gibt das Programm Folgendes aus:

```console
$ raku exercises/numbers/apple-sharing.raku
Jede Person bekommt 3 Apfel/Äpfel.
Es bleiben 2 Apfel/Äpfel übrig.
```

Ändere die Anfangswerte von `$N` und `$K`, um andere Situationen auszuprobieren:

* `$K` ist ein Vielfaches von `$N`, zum Beispiel `12` und `3`;
* `$K` ist gleich `$N`;
* `$K` ist kleiner als `$N`.

## Kommentare

Das Programm verwendet zwei Operatoren: `div` für die Ganzzahldivision und `%` für den Rest der Division. Eine andere Möglichkeit ist, die Berechnungen so durchzuführen:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Beachte auch, wie Raku die Werte der Variablen in die Zeichenkette einsetzt.

{% include nav.html %}

---
title: 'Solution: Apfelteilung'
---

{% include menu.html %}

Hier ist die Lösung.

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

Die Eingabezahlen sind 3 und 11. Damit gibt das Programm Folgendes aus:

```console
$ raku exercises/numbers/apple-sharing.raku
Jede Person bekommt 3 Apfel/Äpfel.
Es bleiben 2 Apfel/Äpfel übrig.
```

Ändere die Anfangswerte von `$N` und `$K`. Probiere andere Fälle aus:

* `$K` lässt sich ohne Rest durch `$N` teilen, zum Beispiel `12` und `3`;
* `$K` ist gleich `$N`;
* `$K` ist kleiner als `$N`.

## Kommentare

Das Programm verwendet zwei Operatoren. Der `div`-Operator macht eine Ganzzahldivision. Der `%`-Operator gibt den Rest der Division zurück. Du kannst die Rechnungen auch so machen:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Sieh dir auch die Zeichenkette an. Raku interpoliert die Variablen darin. Das heißt, Raku setzt ihre Werte in die Zeichenkette ein.

{% include nav.html %}

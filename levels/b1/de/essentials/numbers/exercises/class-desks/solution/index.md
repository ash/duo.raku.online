---
title: 'Solution: Klassentische'
---

{% include menu.html %}

Unten siehst du die Lösung.

## Code

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 Du kannst den vollständigen Code in der Datei [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku) finden.

## Ausgabe

Führe das Programm mindestens zweimal aus. Probiere sowohl eine ungerade als auch eine gerade Schülerzahl. Zum Beispiel gibt das Programm für die Eingabezahlen `23` und `24` dasselbe Ergebnis aus:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Kommentare

Es reicht nicht, die Anzahl der Schüler einfach durch zwei zu teilen. Das Programm muss sowohl ungerade als auch gerade Zahlen behandeln. Hier ist eine mögliche Art, die Zahl aufzurunden: `$students div 2 + $students % 2`. Wenn die Anzahl der Schüler gerade ist, ist der zweite Teil null. Dann ist das Ergebnis die Hälfte der Schülerzahl. Wenn die Zahl ungerade ist, ist der erste Teil trotzdem eine ganze Zahl. Das liegt daran, dass wir `div` statt `/` verwenden. Und der zweite Teil des Ausdrucks fügt einen zusätzlichen Schreibtisch hinzu.

{% include nav.html %}

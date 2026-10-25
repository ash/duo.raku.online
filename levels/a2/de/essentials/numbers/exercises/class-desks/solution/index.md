---
title: 'Solution: Klassentische'
---

{% include menu.html %}

Hier ist die Lösung.

## Code

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 Du kannst den vollständigen Code in der Datei [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku) finden.

## Ausgabe

Führe das Programm mindestens zweimal aus. Probiere eine ungerade und eine gerade Schülerzahl. Probiere zum Beispiel `23` und `24`. Für beide Zahlen gibt das Programm dasselbe Ergebnis aus:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Kommentare

Du kannst die Anzahl der Schüler nicht einfach durch zwei teilen. Das Programm muss mit ungeraden und geraden Zahlen funktionieren. Hier ist ein Weg, die Zahl aufzurunden: `$students div 2 + $students % 2`. Der Ausdruck hat zwei Teile. Wenn die Anzahl der Schüler gerade ist, ist der zweite Teil null. Dann ist das Ergebnis die Hälfte der Schülerzahl. Aber wenn sie ungerade ist, ist der erste Teil trotzdem eine ganze Zahl. Das liegt daran, dass wir `div` verwenden und nicht `/`. Und der zweite Teil fügt einen weiteren Schreibtisch hinzu.

{% include nav.html %}

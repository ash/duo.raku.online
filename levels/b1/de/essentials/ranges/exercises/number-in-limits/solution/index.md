---
title: 'Solution: Wenn die Zahl innerhalb der Grenzen liegt'
---

{% include menu.html %}

Das Programm erstellt einen Bereich aus den Zahlen, die der Benutzer eingibt. Dann prüft der Smartmatch-Test, ob die dritte Zahl innerhalb der Bereichsgrenzen liegt. Dieser Test liefert einen Booleschen Wert, also können wir ihn sofort ausgeben.

## Code

Hier ist die Lösung:

```raku
my $begin = prompt 'Von (einschließlich): ';
my $end = prompt 'Bis (ausschließlich): ';

my $n = prompt 'Was ist die Zahl? ';

say $n ~~ $begin ..^ $end;
```

🦋 Finde das Programm in der Datei [number-in-limits.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/ranges/number-in-limits.raku).

## Ausgabe

Probiere verschiedene Fälle aus, auch einen, bei dem die Zahl gleich dem Ende des Bereichs ist.

```console
$ raku exercises/ranges/number-in-limits.raku
Von (einschließlich): 1
Bis (ausschließlich): 2
Was ist die Zahl? 1.5
True

$ raku exercises/ranges/number-in-limits.raku
Von (einschließlich): 100
Bis (ausschließlich): 200
Was ist die Zahl? 100
True

$ raku exercises/ranges/number-in-limits.raku
Von (einschließlich): -5
Bis (ausschließlich): -2
Was ist die Zahl? -2
False
```

## Kommentar

Beachte, wie der Bereich sein rechtes Ende weglässt: `$begin ..^ $end`.

{% include nav.html %}

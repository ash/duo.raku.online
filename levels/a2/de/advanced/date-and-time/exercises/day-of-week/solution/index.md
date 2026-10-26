---
title: 'Solution: Wochentag'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $date = Date.new(2027, 2, 14);
say $date.day-of-week >= 6;
```

🦋 Du findest den Quellcode in der Datei [day-of-week.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/day-of-week.raku).

## Ausgabe

```
True
```

## Kommentare

1. `day-of-week` gibt den Tagen Nummern von `1` bis `7`. Montag ist `1`, und Sonntag ist `7`. Also sind die zwei Tage des Wochenendes `6` und `7`.

1. Der Test `>= 6` ist `True` für Samstag und für Sonntag. Für die anderen Tage ist er `False`. Der 14.02.2027 ist ein Sonntag. Seine Nummer ist `7`. Also gibt das Programm `True` aus.

{% include nav.html %}

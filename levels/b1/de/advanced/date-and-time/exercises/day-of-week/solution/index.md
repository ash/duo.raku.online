---
title: 'Solution: Wochentag'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `day-of-week` gibt dem Montag die Nummer `1` und dem Sonntag die Nummer `7`. Also sind die beiden Tage des Wochenendes genau `6` und `7`.

1. Der Test `>= 6` ergibt `True` am Samstag und am Sonntag. An jedem anderen Tag ergibt er `False`. Der 14.02.2027 ist ein Sonntag (`7`), daher gibt das Programm `True` aus.

{% include nav.html %}

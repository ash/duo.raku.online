---
title: 'Solution: Wochen bis Weihnachten'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $days = Date.new(2026, 12, 25) - Date.new(2026, 6, 27);
say "{$days div 7} weeks and {$days % 7} days";
```

🦋 Du findest den Quellcode in der Datei [days-until-christmas.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/days-until-christmas.raku).

## Ausgabe

```
25 weeks and 6 days
```

## Kommentare

1. Du kannst ein `Date` von einem anderen subtrahieren. Das Ergebnis ist die Anzahl der Tage dazwischen. Hier ist sie `181`. Also zählst du die Tage jedes Monats nicht selbst. Das spätere Datum steht zuerst. Also ist das Ergebnis positiv.

1. Der Operator `div` teilt ganze Zahlen. Er gibt dir die Anzahl der vollen Wochen: `181 div 7` ist `25`. Der Modulo-Operator `%` gibt den Rest nach der Division. Das sind die übrigen Tage: `181 % 7` ist `6`.

{% include nav.html %}

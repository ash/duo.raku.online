---
title: 'Solution: Wochen bis Weihnachten'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Wenn du ein `Date` von einem anderen subtrahierst, bekommst du die Anzahl der Tage zwischen ihnen. Hier ist das `181`. Du musst die Tage in jedem Monat also nicht selbst zählen. Das spätere Datum steht zuerst, daher ist das Ergebnis positiv.

1. Die ganzzahlige Division mit `div` ergibt die Anzahl der ganzen Wochen: `181 div 7` ist `25`. Der Modulo-Operator `%` ergibt die Tage, die übrig bleiben: `181 % 7` ist `6`.

{% include nav.html %}

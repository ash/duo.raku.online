---
title: 'Solution: Wochentagsnummern'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Day(5);
say Day(1);
```

🦋 Du findest den Quellcode in der Datei [weekday-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/weekday-values.raku).

## Ausgabe

```
Fri
Mon
```

## Kommentare

1. Wir schreiben die Konstanten als Paare. So können wir die Zahlen wählen. Hier beginnen sie bei `1`.

1. `Day(5)` ruft den Enum-Typ auf. Der Aufruf sucht in die andere Richtung, von der Zahl zur Konstante. Er findet die Konstante mit dem Wert `5`. Diese Konstante ist `Fri`. Genauso gibt `Day(1)` den Wert `Mon`. `Fri.value` macht das Gegenteil. Damit kommst du vom Namen zur Zahl.

{% include nav.html %}

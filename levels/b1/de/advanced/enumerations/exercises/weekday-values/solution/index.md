---
title: 'Solution: Wochentagsnummern'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Wenn du die Konstanten als Paare schreibst, kannst du die Zahlen selbst wählen. Hier beginnen sie bei `1`.

1. Wenn du den Enum-Typ als `Day(5)` aufrufst, sucht er in umgekehrter Richtung. Er findet die Konstante mit dem Wert `5`, also `Fri`. Genauso gibt `Day(1)` den Wert `Mon`. Das ist das Gegenteil von `Fri.value`, das vom Namen zur Zahl geht.

{% include nav.html %}

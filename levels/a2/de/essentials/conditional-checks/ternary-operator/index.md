---
title: Ternärer Operator
---

{% include menu.html %}

Der ternäre Operator in Raku hat zwei Teile: `??` ... `!!`. Zuerst kommt ein boolescher Test. Sein Ergebnis ist `True` oder `False`. Nach dem Test kommen zwei Ausdrücke. Raku führt nur einen davon aus. Das Ergebnis des Tests entscheidet, welcher das ist.

```raku
my $shines = 'Sun';
my $day-time = $shines eq 'Sun' ?? 'day' !! 'night';
say $day-time;
```

Mit dem aktuellen Wert von `$shines` gibt das Programm `day` aus. Ändern Sie den Wert in `Moon`. Dann ist das Ergebnis `night`.

Sie können ternäre Ausdrücke zu einer Kette verbinden. Aber machen Sie es nicht zu schwierig.

```raku
my $hours = 20;
my $day-time =
    $hours <= 6 ?? 'Night' !!
    $hours <= 12 ?? 'Morning' !! 
    $hours <= 18 ?? 'Afternoon' !! 'Evening';
say $day-time;
```

Hier gibt das Programm eine Tageszeit aus. Die Tageszeit hängt vom Wert in `$hours` ab.

{% include nav.html %}

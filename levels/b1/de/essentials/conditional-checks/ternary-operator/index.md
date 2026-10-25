---
title: Ternärer Operator
---

{% include menu.html %}

In Raku hat der ternäre Operator zwei Teile: `??` ... `!!`. Zuerst kommt ein boolescher Test, und danach folgen zwei Ausdrücke. Nur einer von ihnen läuft, je nach dem Ergebnis des Tests.

```raku
my $shines = 'Sun';
my $day-time = $shines eq 'Sun' ?? 'day' !! 'night';
say $day-time;
```

Mit dem Wert, den `$shines` jetzt hat, gibt das Programm `day` aus. Wenn Sie ihn in `Moon` ändern, gibt das Programm `night` aus.

Sie können ternäre Ausdrücke verketten. Achten Sie nur darauf, dass der Code nicht zu kompliziert wird.

```raku
my $hours = 20;
my $day-time =
    $hours <= 6 ?? 'Night' !!
    $hours <= 12 ?? 'Morning' !! 
    $hours <= 18 ?? 'Afternoon' !! 'Evening';
say $day-time;
```

Hier gibt das Programm für verschiedene Werte von `$hours` eine andere Tageszeit aus.

{% include nav.html %}

---
title: Ternaire operator
---

{% include menu.html %}

De ternary operator in Raku heeft twee delen: `??` ... `!!`. Eerst komt er een Booleaanse test. Het resultaat daarvan is `True` of `False`. Na de test komen twee expressies. Raku voert er maar één van uit. Het resultaat van de test kiest welke.

```raku
my $shines = 'Sun';
my $day-time = $shines eq 'Sun' ?? 'day' !! 'night';
say $day-time;
```

Met de huidige waarde van `$shines` print het programma `day`. Verander de waarde in `Moon`. Dan is het resultaat `night`.

Je kunt ternary expressies in een keten zetten. Maar maak het niet te moeilijk.

```raku
my $hours = 20;
my $day-time =
    $hours <= 6 ?? 'Night' !!
    $hours <= 12 ?? 'Morning' !! 
    $hours <= 18 ?? 'Afternoon' !! 'Evening';
say $day-time;
```

Hier print het programma een deel van de dag. Dat deel hangt af van de waarde in `$hours`.

{% include nav.html %}

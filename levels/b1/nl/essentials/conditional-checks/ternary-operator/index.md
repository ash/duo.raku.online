---
title: Ternaire operator
---

{% include menu.html %}

In Raku heeft de ternary operator twee delen: `??` ... `!!`. Eerst komt een Booleaanse test, en daarna volgen twee expressies. Er draait maar één van de twee, afhankelijk van het resultaat van de test.

```raku
my $shines = 'Sun';
my $day-time = $shines eq 'Sun' ?? 'day' !! 'night';
say $day-time;
```

Met de waarde die `$shines` nu heeft, print het programma `day`. Als je die verandert in `Moon`, print het programma `night`.

Je kunt ternary expressies aan elkaar koppelen. Zorg er alleen voor dat de code niet te ingewikkeld wordt.

```raku
my $hours = 20;
my $day-time =
    $hours <= 6 ?? 'Night' !!
    $hours <= 12 ?? 'Morning' !! 
    $hours <= 18 ?? 'Afternoon' !! 'Evening';
say $day-time;
```

Hier print het programma een ander deel van de dag voor verschillende waarden van `$hours`.

{% include nav.html %}

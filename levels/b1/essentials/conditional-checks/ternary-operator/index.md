---
title: Ternary operator
---

{% include menu.html %}

In Raku, the ternary operator has two parts: `??` ... `!!`. A Boolean test comes first, and two expressions follow it. Only one of them runs, depending on the result of the test.

```raku
my $shines = 'Sun';
my $day-time = $shines eq 'Sun' ?? 'day' !! 'night';
say $day-time;
```

With the value that `$shines` has now, the program prints `day`. If you change it to `Moon`, the program prints `night`.

You can chain ternary expressions. Just make sure that the code does not get too complicated.

```raku
my $hours = 20;
my $day-time =
    $hours <= 6 ?? 'Night' !!
    $hours <= 12 ?? 'Morning' !! 
    $hours <= 18 ?? 'Afternoon' !! 'Evening';
say $day-time;
```

Here, the program prints a different part of the day for different values of `$hours`.

{% include nav.html %}

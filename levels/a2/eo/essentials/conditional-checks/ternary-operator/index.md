---
title: Ternara operatoro
---

{% include menu.html %}

La ternara operatoro en Raku havas du partojn: `??` ... `!!`. Unue, estas Boolea testo. Ĝia rezulto estas `True` aŭ `False`. Du esprimoj venas post la testo. Raku rulas nur unu el ili. La rezulto de la testo elektas la esprimon.

```raku
my $shines = 'Sun';
my $day-time = $shines eq 'Sun' ?? 'day' !! 'night';
say $day-time;
```

Kun la nuna valoro de `$shines`, la programo presas `day`. Ŝanĝu la valoron al `Moon`. Tiam la rezulto estas `night`.

Vi povas kunigi ternarajn esprimojn en ĉenon. Sed ne faru ĝin tro malfacila.

```raku
my $hours = 20;
my $day-time =
    $hours <= 6 ?? 'Night' !!
    $hours <= 12 ?? 'Morning' !! 
    $hours <= 18 ?? 'Afternoon' !! 'Evening';
say $day-time;
```

Ĉi tie, la programo presas parton de la tago. La parto dependas de la valoro en `$hours`.

{% include nav.html %}

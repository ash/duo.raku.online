---
title: Ternara operatoro
---

{% include menu.html %}

En Raku, la ternara operatoro havas du partojn: `??` ... `!!`. Boolea testo venas unue, kaj du esprimoj sekvas ĝin. Nur unu el ili ruliĝas, depende de la rezulto de la testo.

```raku
my $shines = 'Sun';
my $day-time = $shines eq 'Sun' ?? 'day' !! 'night';
say $day-time;
```

Kun la valoro, kiun `$shines` havas nun, la programo presas `day`. Se vi ŝanĝas ĝin al `Moon`, la programo presas `night`.

Vi povas ĉeni ternarajn esprimojn. Nur certigu, ke la kodo ne fariĝu tro komplika.

```raku
my $hours = 20;
my $day-time =
    $hours <= 6 ?? 'Night' !!
    $hours <= 12 ?? 'Morning' !! 
    $hours <= 18 ?? 'Afternoon' !! 'Evening';
say $day-time;
```

Ĉi tie, la programo presas malsaman parton de la tago por malsamaj valoroj de `$hours`.

{% include nav.html %}

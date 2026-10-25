---
title: Trīsvērtīgais operators
---

{% include menu.html %}

Ternārajam operatoram Raku valodā ir divas daļas: `??` ... `!!`. Vispirms ir Būla tests. Tā rezultāts ir `True` vai `False`. Pēc testa nāk divas izteiksmes. Raku izpilda tikai vienu no tām. Testa rezultāts nosaka, kuru no tām.

```raku
my $shines = 'Sun';
my $day-time = $shines eq 'Sun' ?? 'day' !! 'night';
say $day-time;
```

Ar pašreizējo `$shines` vērtību programma izdrukā `day`. Nomainiet vērtību uz `Moon`. Tad rezultāts ir `night`.

Jūs varat savienot ternārās izteiksmes ķēdē. Bet nepadariet to pārāk grūtu.

```raku
my $hours = 20;
my $day-time =
    $hours <= 6 ?? 'Night' !!
    $hours <= 12 ?? 'Morning' !! 
    $hours <= 18 ?? 'Afternoon' !! 'Evening';
say $day-time;
```

Šeit programma izdrukā dienas daļu. Šī daļa ir atkarīga no `$hours` vērtības.

{% include nav.html %}

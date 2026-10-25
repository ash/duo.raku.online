---
title: Trīsvērtīgais operators
---

{% include menu.html %}

Raku valodā ternārajam operatoram ir divas daļas: `??` ... `!!`. Vispirms nāk Būla tests, un tam seko divas izteiksmes. Izpildās tikai viena no tām, atkarībā no testa rezultāta.

```raku
my $shines = 'Sun';
my $day-time = $shines eq 'Sun' ?? 'day' !! 'night';
say $day-time;
```

Ar vērtību, kāda tagad ir mainīgajā `$shines`, programma izdrukā `day`. Ja jūs to nomaināt uz `Moon`, programma izdrukā `night`.

Ternārās izteiksmes var savienot ķēdē. Tikai pārliecinieties, ka kods nekļūst pārāk sarežģīts.

```raku
my $hours = 20;
my $day-time =
    $hours <= 6 ?? 'Night' !!
    $hours <= 12 ?? 'Morning' !! 
    $hours <= 18 ?? 'Afternoon' !! 'Evening';
say $day-time;
```

Šeit programma izdrukā dažādas dienas daļas dažādām `$hours` vērtībām.

{% include nav.html %}

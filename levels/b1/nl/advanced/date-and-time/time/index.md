---
title: Werken met tijd
---

{% include menu.html %}

Als je zowel de datum als de tijd van de dag nodig hebt, gebruik je het `DateTime`-type. Je maakt het bijna op dezelfde manier als een `Date`. Maar je geeft ook het uur, de minuut en de seconde op:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

De standaard tekstvorm volgt de ISO 8601-standaard. Die bevat de datum, de letter `T` en de tijd. Aan het eind staat een `Z` voor de UTC-tijdzone.

Een `DateTime` heeft de datumdelen die je al kent. Je kunt er ook de delen van de tijd mee lezen:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

Om het huidige moment te krijgen, roep je `DateTime.now` aan. De uitvoer staat hier niet, net als bij `Date.today`. Die verandert elke keer dat je het programma uitvoert.

{% include nav.html %}

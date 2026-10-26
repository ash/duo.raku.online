---
title: Werken met tijd
---

{% include menu.html %}

Soms heb je de datum en ook de tijd van de dag nodig. Gebruik dan het `DateTime`-type. Je maakt het bijna net als een `Date`. Maar je geeft ook het uur, de minuut en de seconde:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

Standaard volgt de tekst de ISO 8601-standaard. Eerst komt de datum. Dan komen de letter `T` en de tijd. Aan het eind staat de letter `Z`. Die staat voor de tijdzone UTC.

Je kent de delen van een datum al. Een `DateTime` heeft die ook. Het heeft ook de delen van de tijd:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

Voor de tijd van nu roep je `DateTime.now` aan. We tonen de uitvoer hier niet. Dat deden we ook bij `Date.today`. De uitvoer verandert elke keer dat het programma draait.

{% include nav.html %}

---
title: Datum en tijd
---

{% include menu.html %}

Raku heeft typen voor datums en tijden. Ze zijn een deel van de taal. Een datum in de kalender heeft het type `Date`. Een datum maak je met het jaar, de maand en de dag:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

Een datum heeft delen. Je kunt elk deel lezen:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

De methode `day-of-week` geeft de dag van de week voor de datum. De dagen hebben nummers. Maandag is `1` en zondag is `7`:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

27 juni 2026 is een zaterdag. Het resultaat is dus `6`.

Een schrikkeljaar heeft 366 dagen. De methode `is-leap-year` kijkt of de datum in een schrikkeljaar valt:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

Voor de datum van vandaag roep je `Date.today` aan. We tonen de uitvoer hier niet. Die hangt af van de dag waarop je het programma uitvoert.

{% include nav.html %}

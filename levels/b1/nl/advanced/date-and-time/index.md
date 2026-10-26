---
title: Datum en tijd
---

{% include menu.html %}

Raku heeft ingebouwde typen voor kalenderdatums en kloktijden. Een kalenderdatum heeft het type `Date`. Om er een te maken, geef je het jaar, de maand en de dag op:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

Als je een datum hebt, kun je de delen ervan lezen:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

De methode `day-of-week` vertelt je op welke dag van de week een datum valt. Die geeft een nummer van `1` voor maandag tot `7` voor zondag:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

27 juni 2026 is een zaterdag, dus het resultaat is `6`.

De methode `is-leap-year` controleert of het jaar van de datum een schrikkeljaar is:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

Roep `Date.today` aan om de datum van vandaag te krijgen. De uitvoer staat hier niet. Die hangt af van de dag waarop je het programma uitvoert.

{% include nav.html %}

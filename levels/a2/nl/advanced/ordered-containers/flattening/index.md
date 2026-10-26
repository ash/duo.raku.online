---
title: Afvlakken en itemisatie
---

{% include menu.html %}

Je kunt een array in een ander array zetten. Raku voegt hun elementen _niet_ vanzelf samen. Kijk naar dit programma:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;
my @c = @a, @b;

say @c.elems; # 2
say @c;       # [[1 2 3] [4 5]]
```

Het array `@c` heeft maar twee elementen: de arrays `@a` en `@b`. Raku bewaart elke container als één item. De elementen ervan gaan niet in het buitenste array. Het is hetzelfde met een array tussen andere waarden:

```raku
my @a = 1, 2, 3;
my @d = 0, @a, 99;
say @d; # [0 [1 2 3] 99]
```

Wil je één platte reeks? Vraag er dan om met de `flat` routine:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat(@a, @b);       # (1 2 3 4 5)
say flat(@a, @b).elems; # 5
```

## Itemisatie (Itemization)

Soms wil je het omgekeerde. Je wilt een container in één stuk houden, zelfs binnen `flat`. De `$(...)` constructie _itemiseert_ zijn argument. Dat betekent: het markeert het resultaat als één enkel item. Vergelijk het vorige voorbeeld met dit voorbeeld:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat($(@a), @b); # ([1 2 3] 4 5)
```

Hier houdt `$(@a)` het array `@a` als één element. Maar `@b` wordt nog steeds plat. Het geeft zijn twee waarden. Dit is weer het idee van de `$` sigil. Een `$` betekent "behandel dit als één ding".

{% include nav.html %}

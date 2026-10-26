---
title: Afvlakken en itemisatie
---

{% include menu.html %}

Als je een array in een ander array zet, voegt Raku hun elementen _niet_ vanzelf samen. Bekijk dit programma:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;
my @c = @a, @b;

say @c.elems; # 2
say @c;       # [[1 2 3] [4 5]]
```

Het array `@c` heeft maar twee elementen, de arrays `@a` en `@b`. Raku bewaart elke container als één item. Het pakt de inhoud niet uit in het buitenste array. Hetzelfde gebeurt als je een array tussen andere waarden zet:

```raku
my @a = 1, 2, 3;
my @d = 0, @a, 99;
say @d; # [0 [1 2 3] 99]
```

Als je echt één platte reeks wilt, vraag er dan direct om met de `flat` routine:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat(@a, @b);       # (1 2 3 4 5)
say flat(@a, @b).elems; # 5
```

## Itemisatie (Itemization)

Soms wil je het tegenovergestelde. Je wilt een container beschermen tegen platslaan, zelfs binnen `flat`. De `$(...)` constructie _itemiseert_ zijn argument. Dat betekent dat de constructie het resultaat als een enkel item markeert. Vergelijk het vorige voorbeeld met dit voorbeeld:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat($(@a), @b); # ([1 2 3] 4 5)
```

Hier houdt `$(@a)` het array `@a` als één element. Maar `@b` wordt nog steeds platgeslagen tot zijn twee waarden. Dit is weer het idee van de `$` sigil. Een `$` betekent "behandel dit als een enkel ding".

{% include nav.html %}

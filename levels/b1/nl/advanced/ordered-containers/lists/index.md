---
title: Lijsten
---

{% include menu.html %}

Een list is ook een geordende verzameling van waarden. Maar anders dan een array is hij _onveranderlijk_. Dat betekent dat je de elementen niet kunt wijzigen, toevoegen of verwijderen. Je schrijft een list als waarden met komma's ertussen, vaak tussen haakjes:

```raku
my $colours = ('red', 'green', 'blue');
```

Je kunt de elementen van een list lezen via hun index, net als bij een array. Je kunt ook vragen hoeveel er zijn:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

Je ziet het verschil als je een element probeert te wijzigen. Bij een array werkt dit, omdat elk element een container is:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

Bij een list krijg je een fout. De elementen van een list zijn gewoon waarden, geen containers:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

Het tweede programma stopt met een melding:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

Gebruik dus een array, met de `@` sigil, als je de inhoud moet wijzigen. Gebruik een list als je alleen een vaste reeks waarden wilt bewaren.

{% include nav.html %}

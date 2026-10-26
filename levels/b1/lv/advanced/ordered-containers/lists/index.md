---
title: Saraksti
translations_gpt:
---

{% include menu.html %}

Saraksts arī ir sakārtota vērtību kolekcija. Bet atšķirībā no masīva tas ir _nemainīgs_. Tas nozīmē, ka jūs nevarat mainīt, pievienot vai noņemt tā elementus. Jūs rakstāt sarakstu kā vērtības ar komatiem starp tām, bieži iekavās:

```raku
my $colours = ('red', 'green', 'blue');
```

Jūs varat nolasīt saraksta elementus pēc to indeksa, tāpat kā masīvam. Jūs varat arī pajautāt, cik to ir:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

Atšķirību jūs redzat, kad mēģināt mainīt elementu. Ar masīvu tas darbojas, jo katrs elements ir konteineris:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

Ar sarakstu jūs saņemat kļūdu. Saraksta elementi ir tikai vērtības, nevis konteineri:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

Otrā programma apstājas ar paziņojumu:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

Tātad izmantojiet masīvu ar sigilu `@`, kad jums vajag mainīt tā saturu. Izmantojiet sarakstu, kad jums vajag tikai glabāt fiksētu vērtību secību.

{% include nav.html %}

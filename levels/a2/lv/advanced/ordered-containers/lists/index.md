---
title: Saraksti
translations_gpt:
---

{% include menu.html %}

Saraksts arī ir sakārtota vērtību kolekcija. Bet tas nav kā masīvs. Saraksts ir _nemainīgs_. Jūs nevarat mainīt tā elementus. Jūs arī nevarat pievienot vai noņemt elementus. Lai uzrakstītu sarakstu, lieciet komatus starp vērtībām. Bieži ap tām ir iekavas:

```raku
my $colours = ('red', 'green', 'blue');
```

Jūs varat nolasīt saraksta elementus pēc to indeksa. Jūs varat arī pajautāt, cik ir elementu. Tas ir tāpat kā ar masīvu:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

Tagad mēģiniet mainīt elementu. Šeit jūs redzat atšķirību. Ar masīvu tas strādā. Katrs masīva elements ir konteineris:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

Ar sarakstu jūs saņemat kļūdu. Saraksta elementi ir tikai vērtības. Tie nav konteineri:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

Otrā programma apstājas. Tā izdrukā šo paziņojumu:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

Tātad, vai jums vajag mainīt datus? Tad izmantojiet masīvu ar sigilu `@`. Vai jums vajag tikai glabāt dažas vērtības noteiktā secībā? Tad izmantojiet sarakstu.

{% include nav.html %}

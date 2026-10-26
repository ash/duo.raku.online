---
title: Listoj
translations_gpt:
---

{% include menu.html %}

Listo ankaŭ estas ordigita kolekto de valoroj. Sed malsame ol tabelo, ĝi estas _neŝanĝebla_. Tio signifas, ke vi ne povas ŝanĝi, aldoni aŭ forigi ĝiajn elementojn. Vi skribas liston kiel valorojn kun komoj inter ili, ofte ene de krampoj:

```raku
my $colours = ('red', 'green', 'blue');
```

Vi povas legi la elementojn de listo laŭ ilia indekso, kiel ĉe tabelo. Vi ankaŭ povas demandi, kiom da ili estas:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

Vi vidas la diferencon, kiam vi provas ŝanĝi elementon. Ĉe tabelo, tio funkcias, ĉar ĉiu elemento estas ujo:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

Ĉe listo, vi ricevas eraron. La elementoj de listo estas nur valoroj, ne ujoj:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

La dua programo haltas kun mesaĝo:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

Do, uzu tabelon, kun la sigelo `@`, kiam vi bezonas ŝanĝi ĝian enhavon. Uzu liston, kiam vi bezonas nur teni fiksitan sekvencon de valoroj.

{% include nav.html %}

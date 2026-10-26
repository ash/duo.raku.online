---
title: Listoj
translations_gpt:
---

{% include menu.html %}

Listo ankaŭ estas ordigita kolekto de valoroj. Sed ĝi ne estas kiel tabelo. Listo estas _neŝanĝebla_. Vi ne povas ŝanĝi ĝiajn elementojn. Vi ankaŭ ne povas aldoni aŭ forigi elementojn. Por skribi liston, metu komojn inter la valoroj. Ofte estas krampoj ĉirkaŭ ili:

```raku
my $colours = ('red', 'green', 'blue');
```

Vi povas legi la elementojn de listo laŭ ilia indekso. Vi ankaŭ povas demandi, kiom da elementoj estas. Estas same kiel ĉe tabelo:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

Nun provu ŝanĝi elementon. Ĉi tie vi vidas la diferencon. Ĉe tabelo, ĝi funkcias. Ĉiu elemento de tabelo estas ujo:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

Ĉe listo, vi ricevas eraron. La elementoj de listo estas nur valoroj. Ili ne estas ujoj:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

La dua programo haltas. Ĝi presas ĉi tiun mesaĝon:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

Do, ĉu vi bezonas ŝanĝi la datumojn? Tiam uzu tabelon, kun la sigelo `@`. Ĉu vi bezonas nur teni kelkajn valorojn en fiksita ordo? Tiam uzu liston.

{% include nav.html %}

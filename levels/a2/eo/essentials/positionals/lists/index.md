---
title: Listoj
---

{% include menu.html %}

Listoj similas al tabeloj, sed ili estas neŝanĝeblaj. Vi ne povas ŝanĝi la grandecon de listo. Vi ankaŭ ne povas ŝanĝi ĝiajn elementojn. Uzu krampojn por krei liston:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Indeksi listojn

Por preni unu elementon de listo, uzu kvadratajn krampojn. Metu la indekson en ilin:

```raku
say $odd[3]; # 7
```

Sed vi ne povas doni al elemento novan valoron:

```raku
$odd[3] = 8; # Ne OK
```

Se vi provas, vi ricevas escepton:

    Ne eblas modifi nemodifikeblan Liston ((1 3 5 7 9))
      en bloko <unit> ĉe t.raku linio 4

## Asigni liston al tabelo

Vi povas konservi liston en variablo kun la sigelo `@`. Kio okazas tiam?

```raku
my @data = (40, 42, 44);
```

Tiam la variablo `@data` enhavas tabelon. Vi povas ŝanĝi ĝiajn elementojn.

%%tipblock
## Variablo aŭ listo

Listo estas neŝanĝebla. Sed vi ankoraŭ povas uzi ĝian variablon denove. Vi povas meti novan liston en ĝin.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}

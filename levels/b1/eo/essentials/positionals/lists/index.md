---
title: Listoj
---

{% include menu.html %}

Listoj estas similaj al tabeloj, sed ili estas neŝanĝeblaj. Tio signifas, ke vi ne povas ŝanĝi la grandecon aŭ la elementojn de listo. Por krei liston, uzu krampojn:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Subskribi listojn

Por preni unuopan elementon de listo, uzu kvadratajn krampojn kun la indekso:

```raku
say $odd[3]; # 7
```

Tamen vi ne povas doni novan valoron:

```raku
$odd[3] = 8; # Ne OK
```

Se vi provas fari tion, vi ricevas escepton:

    Ne eblas modifi nemodifikeblan Liston ((1 3 5 7 9))
      en bloko <unit> ĉe t.raku linio 4

## Asigni liston al tabelo

Kio okazas, se vi konservas liston en variablo, kiu havas la sigelon `@`?

```raku
my @data = (40, 42, 44);
```

En ĉi tiu kazo, la variablo `@data` tenas tabelon, do vi povas ŝanĝi ĝiajn elementojn.

%%tipblock
## Variablo vs listo

Notu, ke listoj estas neŝanĝeblaj. Sed vi ankoraŭ povas reuzi la variablon, kiu tenas la liston.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}

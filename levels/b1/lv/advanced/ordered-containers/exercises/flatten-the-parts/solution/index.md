---
title: 'Risinājums: Saplacināt daļas'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my @first = 1, 2;
my @second = 3, 4, 5;

my @all = flat(@first, @second);
say @all;
say @all.elems;
```

🦋 Šīs programmas pirmkodu var atrast failā [flatten-the-parts.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/flatten-the-parts.raku).

## Izvade

```
[1 2 3 4 5]
5
```

## Komentāri

1. Ja jūs rakstāt `my @all = @first, @second`, jūs _neiegūstat_ plakanu masīvu. Tā vietā jūs iegūstat ligzdotu masīvu ar diviem masīviem, `[[1 2] [3 4 5]]`.

1. Rutīna `flat` apvieno abu masīvu elementus vienā plakanā secībā. Pēc tam šo secību saglabā masīvā `@all`. Rezultātam ir pieci elementi.

{% include nav.html %}

---
title: 'Risinājums: Saplacināt daļas'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Kods `my @all = @first, @second` _nedod_ plakanu masīvu. Tas izveido ligzdotu masīvu no diviem masīviem: `[[1 2] [3 4 5]]`.

1. Rutīna `flat` saliek kopā abu masīvu elementus. Tā izveido vienu plakanu secību. Programma glabā šo secību masīvā `@all`. Rezultātā ir pieci elementi.

{% include nav.html %}

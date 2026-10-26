---
title: 'Risinājums: Masīva aizstājvārds'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my @original = 10, 20, 30;
my @alias := @original;

@original.push(40);
say @alias;
```

🦋 Šīs programmas pirmkodu var atrast failā [alias-an-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/alias-an-array.raku).

## Izvade

```
[10 20 30 40]
```

## Komentāri

1. Saistīšana `@alias := @original` nekopē masīvu. Tā padara `@alias` par vēl vienu nosaukumu tam pašam masīva konteineram.

1. Šoreiz izmaiņa iet caur `@original`, un tā maina struktūru: `push` pievieno elementu. Abi nosaukumi ir viens un tas pats konteineris, tāpēc arī `@alias` redz jauno elementu. Jūs vienmēr varat lietot vienu nosaukumu otra vietā. Nav svarīgi, kuru no tiem jūs izmantojat, lai lasītu vai mainītu masīvu.

{% include nav.html %}

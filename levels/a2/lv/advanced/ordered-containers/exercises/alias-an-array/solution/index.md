---
title: 'Risinājums: Masīva aizstājvārds'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Aplūkojiet saistīšanu `@alias := @original`. Tā padara `@alias` par otru nosaukumu tam pašam masīva konteineram. Tā nekopē masīvu.

1. Šoreiz programma maina masīvu caur `@original`. Tā maina struktūru: `push` pievieno elementu. Abi nosaukumi pieder vienam un tam pašam konteineram. Tāpēc arī `@alias` redz jauno elementu. Abi nosaukumi darbojas tieši vienādi. Jūs varat lasīt vai mainīt masīvu ar jebkuru no tiem.

{% include nav.html %}

---
title: 'Risinājums: Rezerves vērtība'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
sub get($x) {
    fail 'bad' if $x == 0;
    return $x;
}

say get(5) // 'default';
say get(0) // 'default';
```

🦋 Atrodiet programmu failā [fallback-value.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/fallback-value.raku).

## Izvade

```
5
default
```

## Komentāri

1. `get(5)` kā parasti atgriež `5`. Tāpēc `//` patur šo vērtību.

1. `get(0)` atgriež `Failure`. `Failure` ir vērtība ar kļūdu iekšā. Tas ir nedefinēts. Tāpēc `//` izmanto rezerves vērtību, `'default'`. `//` apstrādā nedefinēto `Failure` klusi. Tas neizmet izņēmumu.

{% include nav.html %}

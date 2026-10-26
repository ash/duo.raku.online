---
title: 'Risinājums: Konteinera noklusējuma vērtība'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $count is default(0);

say $count;
say $count.VAR.default;
```

🦋 Avota kodu var atrast failā [container-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/container-default.raku).

## Izvade

```
0
0
```

## Komentāri

1. Iezīme `is default(0)` piešķir konteineram noklusējuma vērtību. Vēl nekas nav piešķirts, tāpēc `$count` nolasīšana atgriež šo noklusējuma vērtību. Tieši tāpēc pirmā rinda izdrukā `0`.

1. `.VAR.default` prasa pašam konteineram noklusējuma vērtību, kas tam tika dota, un tā arī ir `0`. Bez iezīmes konteinera bez tipa noklusējuma vērtība būtu `(Any)`.

{% include nav.html %}

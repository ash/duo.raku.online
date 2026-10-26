---
title: 'Risinājums: Join ar kolu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
say <a b c>.reverse.join: '-';
```

🦋 Atrodiet programmu failā [colon-join.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-join.raku).

## Izvade

```
c-b-a
```

## Komentāri

1. `.reverse` ir ķēdes vidū, tāpēc tas patur savu parasto formu. `join` ir pēdējais, tāpēc tas var lietot kolu. Tas nodod `'-'` tieši tāpat kā `join('-')`.

1. Apgriezto sarakstu `c, b, a` pēc tam savieno ar defisēm, un tas dod `c-b-a`. Kola forma darbojas ar parastām vērtībām, ne tikai ar blokiem.

{% include nav.html %}

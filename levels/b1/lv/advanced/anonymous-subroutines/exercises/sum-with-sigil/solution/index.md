---
title: 'Risinājums: Summa ar `&` sigilu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my &add = -> $a, $b {
    $a + $b;
};

say add(2, 3);
```

🦋 Atrodiet programmu failā [sum-with-sigil.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/sum-with-sigil.raku).

## Izvade

```
5
```

## Komentāri

1. Bultiņas blokam ir divi parametri, `-> $a, $b`. Tieši tāpēc anonīmajai apakšprogrammai vajag divus argumentus.

1. Mainīgais ir deklarēts ar sigilu `&`. Tāpēc to var izsaukt kā `add(2, 3)`, tieši tāpat kā apakšprogrammu ar nosaukumu. Izsaukumā sigils nav vajadzīgs. Tas dod `5`.

{% include nav.html %}

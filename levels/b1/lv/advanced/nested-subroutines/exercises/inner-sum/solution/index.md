---
title: 'Risinājums: Iekšējā summa'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
sub compute {
    sub add($x, $y) {
        $x + $y;
    }

    add(2, 3) + add(4, 5);
}

say compute;
```

🦋 Atrodiet programmu failā [inner-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/inner-sum.raku).

## Izvade

```
14
```

## Komentāri

1. Iekšpus `compute` ligzdoto `add` izmanto divreiz: `add(2, 3)` ir `5`, un `add(4, 5)` ir `9`.

1. To summa, `14`, ir tas, ko atgriež `compute`.

{% include nav.html %}

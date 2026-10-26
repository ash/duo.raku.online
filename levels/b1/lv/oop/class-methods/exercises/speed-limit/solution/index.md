---
title: 'Risinājums: Formula klasē'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
class Geometry {
    method circle-area($r) {
        (π * $r * $r).round
    }
}

say Geometry.circle-area(10);
```

🦋 Atrodiet programmu failā [speed-limit.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/speed-limit.raku).

## Izvade

```
314
```

## Komentāri

1. Metode neizmanto nevienu atribūtu, tikai savu parametru `$r`. Tāpēc jūs varat to izsaukt uz pašas klases, iepriekš neradot objektu.

1. `Geometry.circle-area(10)` izsauc metodi uz tipa objekta un padod tai `10`. Rezultāts ir `π * 10 * 10`, kas pēc noapaļošanas ir `314`.

{% include nav.html %}

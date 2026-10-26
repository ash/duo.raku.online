---
title: 'Risinājums: Taisnstūra laukums'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
class Rectangle {
    has $.width;
    has $.height;

    method area {
        $.width * $.height;
    }

    method describe {
        "area is " ~ self.area;
    }
}

say Rectangle.new(width => 3, height => 4).describe;
```

🦋 Atrodiet programmu failā [rectangle-area.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/rectangle-area.raku).

## Izvade

```
area is 12
```

## Komentāri

1. Metode `area` nolasa objekta paša `width` un `height` caur to piekļuves metodēm. Pēc tam tā tos sareizina. Taisnstūrim `3` reiz `4` rezultāts ir `12`.

1. Metode `describe` neatkārto aprēķinu. Tā vietā tā izsauc `self.area`, lai izpildītu metodi `area` uz tā paša objekta. Pēc tam tā atkārtoti izmanto rezultātu. Tādā veidā jūs būvējat lielāku uzvedību no mazākām metodēm. Tad katrai metodei ir tikai viens darbs.

{% include nav.html %}

---
title: 'Risinājums: Taisnstūra laukums'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Metode `area` nolasa objekta `width` un `height`. Tā to dara ar to piekļuves metodēm. Pēc tam tā tos sareizina. Taisnstūrim `3` reiz `4` rezultāts ir `12`.

1. Metode `describe` nerēķina laukumu vēlreiz. Tā izsauc `self.area`. Tas izpilda metodi `area` uz tā paša objekta. Pēc tam `describe` izmanto tās rezultātu. Tā jūs būvējat lielāku uzvedību no mazām metodēm. Katrai metodei ir tikai viens darbs.

{% include nav.html %}

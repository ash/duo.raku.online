---
title: 'Solvo: Areo de ortangulo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

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

🦋 Vi povas trovi la fontkodon en la dosiero [rectangle-area.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/rectangle-area.raku).

## Eligo

```
area is 12
```

## Komentoj

1. La metodo `area` legas la proprajn `width` kaj `height` de la objekto tra iliaj atingiloj. Poste ĝi multiplikas ilin. Por ortangulo `3` per `4`, la rezulto estas `12`.

1. La metodo `describe` ne ripetas la kalkulon. Anstataŭe, ĝi vokas `self.area` por ruli la metodon `area` sur la sama objekto. Poste ĝi reuzas la rezulton. Tiel vi konstruas pli grandan konduton el pli malgrandaj metodoj. Ĉiu metodo tiam havas nur unu laboron.

{% include nav.html %}

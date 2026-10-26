---
title: 'Solvo: Areo de ortangulo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La metodo `area` legas la `width` kaj `height` de la objekto. Por tio ĝi uzas iliajn atingilojn. Poste ĝi multiplikas ilin. Por ortangulo de `3` per `4`, la rezulto estas `12`.

1. La metodo `describe` ne faras ĉi tiun kalkulon denove. Ĝi vokas `self.area`. Tio rulas la metodon `area` sur la sama objekto. Poste `describe` uzas ĝian rezulton. Tiel vi konstruas pli grandan konduton el malgrandaj metodoj. Ĉiu metodo havas nur unu laboron.

{% include nav.html %}

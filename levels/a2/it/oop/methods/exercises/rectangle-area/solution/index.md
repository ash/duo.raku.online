---
title: 'Soluzione: Area del rettangolo'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

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

🦋 Trova il programma nel file [rectangle-area.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/rectangle-area.raku).

## Output

```
area is 12
```

## Commenti

1. Il metodo `area` legge `width` e `height` dell'oggetto. Per questo usa i loro accessori. Poi li moltiplica. Per un rettangolo `3` per `4`, il risultato è `12`.

1. Il metodo `describe` non rifà questo calcolo. Chiama `self.area`. Questo esegue il metodo `area` sullo stesso oggetto. Poi `describe` usa il suo risultato. In questo modo costruisci un comportamento più grande con metodi piccoli. Ogni metodo ha un solo compito.

{% include nav.html %}

---
title: 'Soluzione: Area del rettangolo'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il metodo `area` legge i propri `width` e `height` attraverso i loro accessori. Poi li moltiplica. Per un rettangolo `3` per `4`, il risultato è `12`.

1. Il metodo `describe` non ripete il calcolo. Invece chiama `self.area` per eseguire il metodo `area` sullo stesso oggetto. Poi riusa il risultato. In questo modo costruisci un comportamento più ampio a partire da metodi più piccoli. Così ogni metodo ha un solo compito.

{% include nav.html %}

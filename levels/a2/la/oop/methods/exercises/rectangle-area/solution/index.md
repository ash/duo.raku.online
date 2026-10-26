---
title: 'Solutio: Area rectanguli'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

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

🦋 Inveni codicem fontem in archivo [rectangle-area.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/rectangle-area.raku).

## Exitus

```
area is 12
```

## Commentarii

1. Methodus `area` legit `width` et `height` obiecti. Ad hoc accessores earum adhibet. Deinde eas multiplicat. Pro rectangulo `3` per `4` effectus est `12`.

1. Methodus `describe` hanc computationem iterum non facit. `self.area` vocat. Hoc methodum `area` in eodem obiecto exsequitur. Deinde `describe` effectu eius utitur. Sic agendi rationem maiorem ex parvis methodis aedificas. Quaeque methodus unum tantum munus habet.

{% include nav.html %}

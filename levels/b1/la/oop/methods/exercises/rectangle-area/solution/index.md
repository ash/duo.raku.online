---
title: 'Solutio: Area rectanguli'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Methodus `area` proprias obiecti `width` et `height` per accessores earum legit. Deinde eas multiplicat. Pro rectangulo `3` per `4` effectus est `12`.

1. Methodus `describe` computationem non repetit. Loco eius `self.area` vocat, ut methodum `area` in eodem obiecto exsequatur. Deinde effectum iterum adhibet. Hoc modo agendi rationem maiorem ex minoribus methodis aedificas. Quaeque methodus tum unum tantum munus habet.

{% include nav.html %}

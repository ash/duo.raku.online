---
title: 'Solutio: Formula in classe'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
class Geometry {
    method circle-area($r) {
        (π * $r * $r).round
    }
}

say Geometry.circle-area(10);
```

🦋 Inveni codicem fontem in archivo [speed-limit.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/speed-limit.raku).

## Exitus

```
314
```

## Commentarii

1. Methodus nullo attributo utitur, solum parametro suo `$r`. Itaque eam in ipsa classe vocare potes, nec necesse est prius obiectum creare.

1. `Geometry.circle-area(10)` methodum in obiecto generis vocat et ei `10` tradit. Effectus est `π * 10 * 10`, quod post rotundationem est `314`.

{% include nav.html %}

---
title: 'Solutio: Formula in classe'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. Methodus nullo attributo utitur. Solum cum parametro suo `$r` operatur. Itaque eam in ipsa classe vocare potes. Non necesse est obiectum prius facere.

1. `Geometry.circle-area(10)` methodum in obiecto generis vocat. `10` ad methodum tradit. Effectus est `π * 10 * 10`. Post rotundationem est `314`.

{% include nav.html %}

---
title: 'Solutio: Triplicatio ut methodus'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
class Number {
    has $.n;

    method triple {
        $.n * 3;
    }
}

say Number.new(n => 7).triple;
```

🦋 Inveni codicem fontem in archivo [triple-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-method.raku).

## Exitus

```
21
```

## Commentarii

1. Ut methodus, `triple` ad obiectum pertinet et `n` obiecti adhibet. Nihil ei tradis.

1. In versione subprogrammatis, data ut argumentum adveniunt. Hic autem data in obiecto habitant. Utraque versio `21` dat.

{% include nav.html %}

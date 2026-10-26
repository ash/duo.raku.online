---
title: 'Solutio: Summa interior'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
sub compute {
    sub add($x, $y) {
        $x + $y;
    }

    add(2, 3) + add(4, 5);
}

say compute;
```

🦋 Codicem fontem in archivo [inner-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/inner-sum.raku) invenire potes.

## Exitus

```
14
```

## Commentarii

1. Intra `compute` auxiliaris inclusa `add` bis adhibetur: `add(2, 3)` est `5`, et `add(4, 5)` est `9`.

1. Summa eorum, `14`, est quod `compute` reddit.

{% include nav.html %}

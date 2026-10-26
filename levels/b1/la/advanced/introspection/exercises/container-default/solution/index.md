---
title: 'Solutio: Praedefinitum receptaculi'
translations_gpt: Solutio exercitationis 'Praedefinitum receptaculi'
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $count is default(0);

say $count;
say $count.VAR.default;
```

🦋 Inveni codicem fontem in archivo [container-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/container-default.raku).

## Exitus

```
0
0
```

## Commentarii

1. Tropus `is default(0)` receptaculo valorem praedefinitum dat. Nihil adhuc assignatum est, itaque lectio `$count` hoc praedefinitum reddit. Ideo prima linea `0` imprimit.

1. `.VAR.default` receptaculum ipsum de praedefinito sibi dato interrogat, quod etiam `0` est. Sine tropo, praedefinitum receptaculi sine typo esset `(Any)`.

{% include nav.html %}

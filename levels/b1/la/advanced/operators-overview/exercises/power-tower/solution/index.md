---
title: 'Solutio: Turris potentiarum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
say 2 ** 2 ** 3;
```

🦋 Inveni codicem fontem in archivo [power-tower.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/power-tower.raku).

## Exitus

```
256
```

## Commentarii

1. Operator `**` dextro-associativus est, ergo expressio congregat ut `2 ** (2 ** 3)`.

1. Hoc est `2 ** 8`, quod est `256`. Non est `(2 ** 2) ** 3`, quod `64` daret.

{% include nav.html %}

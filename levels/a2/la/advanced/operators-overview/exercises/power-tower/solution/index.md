---
title: 'Solutio: Turris potentiarum'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. `**` dextro-associativus est. Ergo expressio congregat ut `2 ** (2 ** 3)`.

1. Hoc est `2 ** 8`, et eventus est `256`. Non est `(2 ** 2) ** 3`. Id esset `64`.

{% include nav.html %}

---
title: 'Solutio: Summa cum sigilo `&`'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my &add = -> $a, $b {
    $a + $b;
};

say add(2, 3);
```

🦋 Inveni codicem fontem in archivo [sum-with-sigil.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/sum-with-sigil.raku).

## Exitus

```
5
```

## Commentarii

1. Cuspis acuta duos parametros habet, `-> $a, $b`. Ideo subroutina anonyma duo argumenta requirit.

1. Variabilis cum sigillo `&` declarata est. Itaque eam ut `add(2, 3)` vocare potes, prorsus sicut subroutinam nominatam. In vocatione sigillo non eges. Hoc `5` dat.

{% include nav.html %}

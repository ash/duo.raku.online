---
title: 'Solutio: Map cum duplo puncto'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
say (1..10).map(* * 2).grep: * > 10;
```

🦋 Inveni codicem fontem in archivo [colon-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-map.raku).

## Exitus

```
(12 14 16 18 20)
```

## Commentarii

1. Forma cum colono solum pro `grep` possibilis est, ultima vocatione in catena. Colon `* > 10` argumentum eius facit, prorsus sicut `grep(* > 10)`. Exitum adhuc imprimere debemus. Itaque nunc `say` ut functio adhibetur, non ut methodus.

1. Vocatio `map` parentheses suas servare debet. Finge te `.map: * * 2` pro eo scripsisse. Colon tum etiam `.grep(* > 10)` ut argumentum `map` caperet. Itaque catena frangeretur.

{% include nav.html %}

---
title: 'Solutio: Map cum duplo puncto'
translations_gpt:
---

{% include menu.html %}

Hoc modo opus solvere potes.

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

1. Solum `grep` forma cum colono uti potest. Ultima vocatio in catena est. Colon `* > 10` argumentum eius facit. Hoc idem est quod `grep(* > 10)`. Exitum adhuc imprimere debemus. Itaque nunc `say` ut functionem adhibemus, non ut methodum.

1. Vocatio `map` parentheses suas servare debet. Si `.map: * * 2` scribis, difficultas est. Colon etiam `.grep(* > 10)` capit. Pars argumentorum `map` fit. Tum catena frangitur.

{% include nav.html %}

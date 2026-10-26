---
title: 'Solutio: Omnes factoriales simul'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
say [\*] 1..6;
```

🦋 Inveni codicem fontem in archivo [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/factorial.raku).

## Exitus

```
(1 2 6 24 120 720)
```

## Commentarii

1. Linea obliqua inversa intra uncos `[*]` reductionem *triangularem* facit. Listam in unum valorem non contrahit. Potius omne productum partiale servat: `1`, deinde `1*2`, deinde `1*2*3`, et ita porro.

1. Quodque productum partiale `1*2*...*k` est exacte _k!_. Ergo eventus est lista factorialium ab `1` ad `6`. Simplex `[*] 1..6` tantum ultimum ex eis daret, `720`.

{% include nav.html %}

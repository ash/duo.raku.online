---
title: 'Solutio: Omnes factoriales simul'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. Intra uncos est linea obliqua inversa. Ea `[*]` reductionem *triangularem* facit. Talis reductio listam in unum valorem non convertit. Omnem gradum producti servat: `1`, deinde `1*2`, deinde `1*2*3`, et ita porro.

1. Quodque productum `1*2*...*k` est exacte _k!_. Ergo eventus est lista factorialium ab `1` ad `6`. Simplex `[*] 1..6` tantum ultimum dat, `720`.

{% include nav.html %}

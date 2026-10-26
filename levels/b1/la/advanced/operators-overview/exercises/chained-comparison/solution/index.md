---
title: 'Solutio: Comparatio catenata'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
say 0 <= 73 <= 100;
```

🦋 Inveni codicem fontem in archivo [chained-comparison.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/chained-comparison.raku).

## Exitus

```
True
```

## Commentarii

1. Operatores comparationis catenari possunt. Ergo `0 <= 73 <= 100` significat “0 est ad summum 73, et 73 est ad summum 100”. Operator `<=` valores extremos permittit. Ergo punctum exacte `0` vel `100` quoque validum esset.

1. Ambae partes verae sunt, ergo tota expressio `True` est. Nota quod valorem medium `73` semel tantum scribis. Tamen cum ambobus vicinis suis comparatur.

1. Sine catenatione ambas comparationes scribere et cum `&&` coniungere deberes. Tum valorem medium repetis: `0 <= 73 && 73 <= 100`. Forma catenata idem brevius dicit.

{% include nav.html %}

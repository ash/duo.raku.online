---
title: 'Solutio: Comparatio catenata'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. Operatores comparationis catenare potes. Ergo `0 <= 73 <= 100` significat “0 est ad summum 73, et 73 est ad summum 100”. Operator `<=` etiam fines permittit. Ergo punctum exacte `0` vel `100` quoque validum est.

1. Ambae partes verae sunt. Ergo tota expressio `True` est. Specta valorem medium, `73`. Eum semel tantum scribis. Sed Raku eum cum ambobus valoribus vicinis comparat.

1. Sine catenatione ambas comparationes scribere debes. Eas cum `&&` coniungis. Et valorem medium bis scribis: `0 <= 73 && 73 <= 100`. Forma catenata idem brevius dicit.

{% include nav.html %}

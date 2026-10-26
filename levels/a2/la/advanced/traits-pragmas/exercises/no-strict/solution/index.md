---
title: 'Solutio: Strictum relaxare'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
no strict;

$a = 10;
$b = 20;
say $a + $b;
```

🦋 Inveni codicem fontem in archivo [no-strict.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/no-strict.raku).

## Exitus

```
30
```

## Commentarii

1. `no strict` regulam deactivat. Regula dicit: omnes variabiles declarare debes. Ergo variabilibus `$a` et `$b` sine `my` assignare potes. Cum `strict` solito, hae lineae tempore compilationis errores dant.

1. Post assignationem variabiles ut solent operantur. Ergo `$a + $b` est `30`. Haec mutatio regulae lexicalis est. Tantum usque ad finem ambitus currentis durat. Hic est ambitus cum `no strict`.

1. Haec tantum demonstratio est. In praxi eam non commendamus. `strict` ex defectu activum est bona ratione. Errores scribendi in nominibus variabilium tempore compilationis invenit. In codice vero, id activum serva. Variabiles tuas cum `my` declara.

{% include nav.html %}

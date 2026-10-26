---
title: 'Solutio: Strictum relaxare'
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `no strict` regulam deactivat quae dicit variabiles declarari debere. Ergo variabilibus `$a` et `$b` sine `my` assignare potes. Cum `strict` ex defectu, quaeque ex his lineis error tempore compilationis esset.

1. Postquam eas assignas, variabiles ut solent se gerunt, ergo `$a + $b` est `30`. Haec regula laxior lexicalis est. Tantum usque ad finem ambitus durat ubi `no strict` apparet.

1. Haec tantum demonstratio est, et eam in praxi non commendamus. `strict` ex defectu activum est bona ratione. Errores scribendi in nominibus variabilium tempore compilationis deprehendit. In codice vero, id activum serva et variabiles tuas cum `my` declara.

{% include nav.html %}

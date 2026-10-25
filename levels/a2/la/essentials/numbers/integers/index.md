---
title: Numeri integri
---

{% include menu.html %}

Numeri integri sunt numeri sine fractionibus. In Raku typus datorum `Int` est pro numeris integris. Numerus integer positivus vel negativus esse potest. Signum `+` etiam ante numerum scribere potes, si vis. Hic sunt pauca exempla simplicia:

```raku
42
-42
100
-5
0
```

Ita, simplex `0` etiam integer est per defaltam.

## Greges digitorum

Raku bellam proprietatem pro numeris magnis habet. Digitos in greges milium dividere potes. Sic numeros facilius legis:

```raku
1_000_000
-3_141_592
```

Etiam numerum ut `34_56` scribere potes. Melius est hoc non facere. Alios qui codicem tuum legunt confundere potest. Sed duos underscores iuxta ponere non potes. Et numerus cum underscore incipere vel finire non potest.

## Numeri integri omnis longitudinis

Raku cum numeris maximis optime operatur. Maiores esse possunt quam limites 32-bitarum vel 64-bitarum. Exempli gratia, programma infra bonum est. Duos magnos numeros integros multiplicat et eventum rectum imprimit.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}

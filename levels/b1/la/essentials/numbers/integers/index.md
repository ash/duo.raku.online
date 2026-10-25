---
title: Numeri integri
---

{% include menu.html %}

Typus datorum `Int` est pro numeris integris, id est numeris sine fractionibus. Positivi vel negativi esse possunt. Signum `+` addere potes, si vis. Hic sunt pauca exempla manifesta:

```raku
42
-42
100
-5
0
```

Ita, per defaltam Raku simplicem `0` ut integrum tractat.

## Greges digitorum

Raku venustam proprietatem habet quae te adiuvat numeros magnos scribere. Digitos in greges milium dividere potes, ut facilius legantur:

```raku
1_000_000
-3_141_592
```

Numerum ut `34_56` facere potes, sed melius est id vitare. Hoc alios qui codicem tuum legunt confundere potest. Sed duos underscores iuxta ponere non potes. Etiam numerus cum underscore incipere vel finire non potest.

## Numeri integri omnis longitudinis

Raku nullum problema habet cum numeris ultra limites 32-bitarum vel 64-bitarum. Exempli gratia, sequens programma rectum est. Duos magnos numeros integros multiplicat et eventum rectum imprimit.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}

---
title: 'Multiplicem `MAIN` functiones'
---

{% include menu.html %}

Sicut quaevis alia functio in Raku, functio `MAIN` variantes `multi` habere potest. Cum eis, programma ad quemque casum suo modo respondere potest. Casus differre possunt numero parametrorum input aut typis eorum.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

Si solum unum argumentum est, hoc programma id duplicat. Si secundum argumentum adest, programma ambo argumenta addit:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}

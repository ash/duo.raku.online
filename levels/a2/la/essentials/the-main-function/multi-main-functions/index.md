---
title: 'Multiplicem `MAIN` functiones'
---

{% include menu.html %}

Sicut quaevis alia functio in Raku, `MAIN` variantes `multi` habere potest. Ita programma ad diversum input diversis modis respondere potest. Input alium numerum parametrorum habere potest. Aut parametri alios typos habere possunt.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

Cum uno argumento, hoc programma id duplicat. Cum duobus argumentis, ea addit:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}

---
title: 'Solutio: Intervallum functio'
---

{% include menu.html %}

Functio `if` cum tribus ramis habet. Primi duo rami probationem habent. Probatio est `True` aut `False`. Tertius ramus probationem non requirit. Numerus in primis duabus probationibus deficere potest. Tum solum tertius ramus restat.

## Codex

Hic est solutio:

```raku
sub f($x) {
    if    $x > 0  { return $x - 0.5 }
    elsif $x == 0 { return 0 }
    else          { return -$x }
}

say f(-2);
say f(0);
say f(3);
```

🦋 Inveni codicem fontem in archivo [interval-function.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/interval-function.raku).

## Exitus

```console
$ raku exercises/functions/interval-function.raku
2
0
2.5
```

{% include nav.html %}

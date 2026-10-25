---
title: 'Solutio: Intervallum functio'
---

{% include menu.html %}

Haec functio constructionem `if` cum tribus ramis adhibet. Primi duo rami probationem Booleanam habent. Tertius ramus probationem non requirit. Si numerus primas duas probationes non superat, hic ramus sola optio reliqua est.

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

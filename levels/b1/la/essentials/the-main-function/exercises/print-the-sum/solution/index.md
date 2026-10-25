---
title: 'Solutio: Print summa'
---

{% include menu.html %}

Programma solum unam functionem `MAIN` habet. Duo argumenta typata accipit. Utrumque ex argumentis lineae mandati fit.

## Codex

Hic est solutio:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Invenias programma in archivo [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Exitus

Tenta diversos numeros input:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Programma etiam sine argumentis currere potes, aut cum argumentis aliorum typorum. Vide quid tum fiat. De talibus casibus tractandis in secunda parte cursus loquemur.

{% include nav.html %}

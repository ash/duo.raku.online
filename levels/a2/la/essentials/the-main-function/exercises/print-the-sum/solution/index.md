---
title: 'Solutio: Print summa'
---

{% include menu.html %}

Programma solum unam functionem habet, `MAIN`. Duo argumenta cum typis accipit. Utrumque argumentum valorem suum ex linea mandati accipit.

## Codex

Hic est solutio:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Invenias programma in archivo [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Exitus

Tenta diversos numeros:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Programma etiam sine argumentis currere potes. Aut argumenta aliorum typorum adhibere potes. Vide quid fit. Secunda pars cursus te tales casus tractare docet.

{% include nav.html %}

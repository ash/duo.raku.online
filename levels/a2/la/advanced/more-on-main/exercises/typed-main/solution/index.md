---
title: 'Solutio: MAIN typificatum'
translations_gpt: true
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
sub MAIN(Int $n) {
    say $n * 2;
}
```

🦋 Codicem fontem in fasciculo [typed-main.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/typed-main.raku) invenire potes.

## Exitus

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Commentarii

1. Parametrus typum `Int` habet. Itaque verbum in linea mandati numero integro simile esse debet. Valor `5` in `$n` it. Tum corpus `10` imprimit.

1. Valor `abc` `Int` fieri non potest. Itaque signatura non congruit. Raku corpus non exsequitur. Pro eo nuntium de usu imprimit. Raku hunc nuntium ipse facit. Itaque Raku argumenta pro te probat. Ipse nullas probationes scribis.

{% include nav.html %}

---
title: 'Solutio: MAIN typificatum'
translations_gpt: true
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Typus `Int` significat verbum lineae mandati numero integro simile esse debere. Cum `5`, valor in `$n` it, et corpus `10` imprimit.

1. Cum `abc`, valor `Int` fieri non potest, itaque signatura non congruit. Raku corpus non exsequitur. Pro eo nuntium de usu generatum imprimit. Itaque Raku argumenta pro te probat. Non opus est probationes ipse scribere.

{% include nav.html %}

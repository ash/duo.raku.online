---
title: 'Solutio: Numerare et summam'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
enum Coin (penny => 1, nickel => 5, dime => 10, quarter => 25);

say Coin.enums.elems;
say Coin.enums.values.sum;
```

🦋 Inveni codicem fontem in archivo [enum-introspection.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/enum-introspection.raku).

## Exitus

```
4
41
```

## Commentarii

1. Constantes ut paria scriptae sunt. Itaque quaeque valorem a nobis electum accipit, non numeros quos Raku sponte ab zero dat.

1. `.enums` tabulam reddit, in qua quodque nomen constantis ad valorem suum monstrat. `.elems` elementa numerat, et quattuor nummi sunt.

1. `.values` solos numeros post nomina dat. Deinde `.sum` eos simul addit: `1 + 5 + 10 + 25` est `41`.

{% include nav.html %}

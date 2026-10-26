---
title: 'Solutio: Numerare et summam'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. Constantes ut paria scribimus. Itaque valorem cuiusque constantis eligimus. Raku eas ab zero non numerat.

1. `.enums` tabulam reddit. Tabula similis est hash. In ea quodque nomen constantis valorem suum habet. `.elems` elementa numerat. Quattuor nummi sunt.

1. `.values` solos numeros post nomina sumit. `.sum` eos addit: `1 + 5 + 10 + 25` est `41`.

{% include nav.html %}

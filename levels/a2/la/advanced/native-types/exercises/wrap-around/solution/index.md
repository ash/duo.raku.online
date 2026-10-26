---
title: 'Solutio: Circumvolvere'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my uint8 $u = 250;
$u += 10;
say $u;

my uint8 $v = 0;
$v--;
say $v;
```

🦋 Inveni codicem fontem in archivo [wrap-around.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/wrap-around.raku).

## Exitus

```
4
255
```

## Commentarii

1. `uint8` ab `0` ad `255` pertinet. Sunt 256 valores diversi. Re vera omnis arithmetica in eo est modulo 256. Eventus est residuum post divisionem per 256.

1. Normaliter `250 + 10` est `260`. Sed `260` locum non habet. Itaque valor circumvolvitur. Iterum ab imo incipit et ad `260 - 256 = 4` pervenit. Superfluxus non solum unus gradus ultra summum est. Quilibet eventus extra ambitum in ambitum redit.

1. Etiam in altera parte superfluxus est. In typo non signato decrementum `0` non potest `-1` dare. Itaque valor ad maximum valorem, `255`, circumvolvitur.

{% include nav.html %}

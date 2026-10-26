---
title: 'Solutio: Circumvolvere'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `uint8` ab `0` ad `255` pertinet, itaque 256 valores diversos habet. Re vera arithmetica in eo modulo 256 fit.

1. `250 + 10` esset `260`, qui locum non habet. Itaque valor circumvolvitur et ad `260 - 256 = 4` supra imum pervenit. Hoc significat superfluxum non solum de uno gradu ultra summum esse. Quilibet eventus extra ambitum in eum reducitur.

1. Etiam in alteram partem ire superfluxum facit. In typo non signato decrementum `0` non potest `-1` dare. Itaque ad maximum, `255`, circumvolvitur.

{% include nav.html %}

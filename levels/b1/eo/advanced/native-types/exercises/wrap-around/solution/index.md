---
title: 'Solvo: Ĉirkaŭvolvo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my uint8 $u = 250;
$u += 10;
say $u;

my uint8 $v = 0;
$v--;
say $v;
```

🦋 Vi povas trovi la fontkodon en la dosiero [wrap-around.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/wrap-around.raku).

## Eligo

```
4
255
```

## Komentoj

1. `uint8` iras de `0` ĝis `255`, do ĝi havas 256 malsamajn valorojn. Praktike, aritmetiko kun ĝi okazas laŭ modulo 256.

1. `250 + 10` estus `260`, kio ne konvenas. Do la valoro ĉirkaŭvolviĝas kaj alvenas `260 - 256 = 4` super la malsupro. Tio signifas, ke superfluo ne temas nur pri unu paŝo super la supro. Ĉiu rezulto ekster la intervalo estas revenigita en ĝin.

1. Iri en la alian direkton ankaŭ kaŭzas superfluon. En sensigna tipo, malpliigi `0` ne povas doni `-1`. Do ĝi ĉirkaŭvolviĝas al la maksimumo, `255`.

{% include nav.html %}

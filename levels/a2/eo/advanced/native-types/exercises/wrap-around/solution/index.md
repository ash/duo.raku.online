---
title: 'Solvo: Ĉirkaŭvolvo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `uint8` iras de `0` ĝis `255`. Tio estas 256 malsamaj valoroj. Fakte, ĉiu aritmetiko kun ĝi estas laŭ modulo 256. La rezulto estas la resto post divido per 256.

1. Normale, `250 + 10` estas `260`. Sed `260` ne konvenas. Do la valoro ĉirkaŭvolviĝas. Ĝi rekomencas de la malsupro kaj alvenas al `260 - 256 = 4`. Superfluo ne estas nur unu paŝo super la supro. Ĉiu rezulto ekster la intervalo revenas en la intervalon.

1. Ankaŭ la alia direkto superfluas. En sensigna tipo, malpliigo de `0` ne povas doni `-1`. Do la valoro ĉirkaŭvolviĝas al la plej granda valoro, `255`.

{% include nav.html %}

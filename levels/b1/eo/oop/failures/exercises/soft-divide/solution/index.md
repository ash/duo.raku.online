---
title: 'Solvo: Mola reciproko'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
sub reciprocal($n) {
    fail 'no reciprocal of zero' if $n == 0;
    return 1 / $n;
}

say reciprocal(4);
say reciprocal(0) // 'undefined';
```

🦋 Vi povas trovi la fontkodon en la dosiero [soft-divide.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/soft-divide.raku).

## Eligo

```
0.25
undefined
```

## Komentoj

1. `reciprocal(4)` funkcias normale kaj redonas `1 / 4`, tio estas, `0.25`.

1. `reciprocal(0)` vokas `fail`, do ĝi redonas `Failure`, kiu estas nedifinita. La operatoro `//` redonas sian dekstran flankon, kiam ajn ĝia maldekstra flanko estas nedifinita. Do ni ricevas la rezervan valoron `undefined`.

1. Uzi `//` kalkuliĝas kiel trakti la misfunkcion. Ĝi kontrolas, ĉu la valoro estas difinita, sed ĝi ne uzas la valoron. Do la `Failure` restas mola kaj neniam estas ĵetata kiel vera escepto.

{% include nav.html %}

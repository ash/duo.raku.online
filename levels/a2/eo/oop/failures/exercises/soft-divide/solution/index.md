---
title: 'Solvo: Mola reciproko'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `reciprocal(4)` funkcias kiel kutime. Ĝi redonas `1 / 4`. Tio estas `0.25`.

1. `reciprocal(0)` vokas `fail`. Do ĝi redonas `Failure`. `Failure` estas nedifinita valoro kun eraro interne. La operatoro `//` rigardas sian maldekstran flankon. Se la maldekstra flanko estas nedifinita, `//` redonas sian dekstran flankon. Do ni ricevas la rezervan valoron, `undefined`.

1. Uzi `//` kalkuliĝas kiel trakti la misfunkcion. `//` nur kontrolas, ĉu la valoro estas difinita. Ĝi ne uzas la valoron. Do la `Failure` restas mola. Raku neniam ĵetas ĝin kiel veran escepton.

{% include nav.html %}

---
title: Intervaloj
---

{% include menu.html %}

En Raku, intervaloj kreas listojn de eroj, kiuj sekvas unu post alia.

En la plej simpla kazo, intervalo estas listo de entjeroj, kiuj pliiĝas je unu. Por krei intervalon, uzu la operatoron `..` kaj du valorojn. Ili difinas la minimuman kaj la maksimuman valorojn de la intervalo:

```raku
1 .. 5
```

La spacoj ĉirkaŭ la operatoro ne estas devigaj. Do vi povas skribi la saman intervalon tiel:

```raku
1..5
```

Intervalo estas maniero krei listojn, sed ĝi tamen estas unu sola objekto. Do vi povas konservi ĝin en skalara variablo:

```raku
my $r = 1 .. 5;
```

## Ne nur nombroj

Intervaloj ankaŭ povas uzi aliajn datumtipojn, se Raku scias, kiel pliigi iliajn valorojn. Ekzemple:

```raku
my $letters = 'a' .. 'z';
```

En Raku, intervaloj estas objektoj de sia propra datumtipo. La tipo de la variablo `$r` estas `Range`.

{% include nav.html %}

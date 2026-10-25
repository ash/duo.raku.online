---
title: Kongruado kontraŭ intervalo
---

{% include menu.html %}

Prenu intervalon kaj variablon, kiu tenas entjeran valoron:

```raku
my $r = 1..10;
my $v = 7;
```

La _inteligenta kongrua operatoro_ `~~` permesas al vi kontroli, ĉu la valoro estas ene de la intervalo:

```
say $v ~~ $r;
```

En ĉi tiu ekzemplo, la kondiĉo estas `True`, do la programo presas `True`.

{% include nav.html %}

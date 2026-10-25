---
title: Kongruado kontraŭ intervalo
---

{% include menu.html %}

Jen intervalo kaj variablo. La variablo havas entjeran valoron:

```raku
my $r = 1..10;
my $v = 7;
```

Uzu la _inteligentan kongruan operatoron_ `~~`. Ĝi kontrolas, ĉu la valoro estas en la intervalo:

```
say $v ~~ $r;
```

En ĉi tiu ekzemplo, la kondiĉo estas `True`. Do la programo presas `True`.

{% include nav.html %}

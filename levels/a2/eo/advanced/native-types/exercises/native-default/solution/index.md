---
title: 'Solvo: La denaska defaŭlto'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my num $n;
my str $s;

say $n;
say "[$s]";
```

🦋 Vi povas trovi la fontkodon en la dosiero [native-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-default.raku).

## Eligo

```
0
[]
```

## Komentoj

1. Indiĝena `num` ne povas esti nedefinita. Do ĝi komenciĝas je `0`, kiel indiĝena `int`. Ĝi ne komenciĝas kiel `(Num)`.

1. Indiĝena `str` komenciĝas kiel malplena ĉeno. Do estas nenio inter la krampoj. Indiĝena tipo neniam tenas nedefinitan valoron.

1. Ĉi tie, la tipoj estas tre gravaj. Provu forigi ilin. Skribu anstataŭe `my $n; my $s;`. Nun la variabloj estas normalaj ujoj. Komence ili estas *nedefinitaj*: ili tenas `Any`. Tiam `say $n` presas `(Any)`. La ĉeno interpolas `$s`, sed `$s` estas nedefinita. Do Raku montras averton: *“Use of uninitialized value … in string context”*. Nur la indiĝenaj tipoj `num` kaj `str` donas la komencajn valorojn. Tiuj estas `0` kaj la malplena ĉeno.

{% include nav.html %}

---
title: 'Solvo: La denaska defaŭlto'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. Indiĝena `num` ne povas esti nedefinita. Do, same kiel indiĝena `int`, ĝi komenciĝas je `0` kaj ne je `(Num)`.

1. Indiĝena `str` komenciĝas kiel la malplena ĉeno. Tial estas nenio inter la krampoj en la eligo. Neniu el la indiĝenaj tipoj iam tenas nedefinitan valoron.

1. La nomoj de la tipoj estas tre gravaj ĉi tie. Se vi forigas ilin kaj skribas `my $n; my $s;`, la variabloj fariĝas ordinaraj ujoj. Komence ili estas *nedefinitaj* (`Any`). Tiam `say $n` presas `(Any)`. Interpoli la nedefinitan `$s` ankaŭ donas averton: *“Use of uninitialized value … in string context”*. Nur la indiĝenaj tipoj `num` kaj `str` donas la defaŭltajn valorojn `0` kaj la malplenan ĉenon.

{% include nav.html %}

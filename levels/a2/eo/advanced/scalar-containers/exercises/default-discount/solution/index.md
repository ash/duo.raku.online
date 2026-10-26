---
title: 'Solvo: Defaŭlta rabato'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Vi povas trovi la fontkodon en la dosiero [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Kompreneble, ekzistas pli simpla solvo. Donu al la variablo la valoron `0`, kiam vi kreas ĝin:

```raku
my $discount = 0;
say $discount;

$discount = 15;
say $discount;
```

## Eligo

```
0
15
```

## Komentoj

1. La trajto `is default(0)` donas al la ujo rezervan valoron. La ujo uzas ĝin, ĝis vi atribuas ion. Se vi legas la variablon, vi ricevas `0`. Sen deklarita defaŭlto, vi ricevas averton pri _nepravalorizita valoro_. Ĉi tie, ne estas tia averto.

1. Post la atribuo, la ujo tenas `15`. La defaŭlta valoro ne plu gravas.

{% include nav.html %}

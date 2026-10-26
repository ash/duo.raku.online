---
title: 'Solvo: Defaŭlta rabato'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo de la tasko.

## Kodo

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 Vi povas trovi la fontkodon en la dosiero [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Kompreneble, estus pli simple doni al la variablo la valoron `0` tuj:

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

1. La trajto `is default(0)` donas al la ujo valoron, kiun ĝi uzas, ĝis io estas atribuita. Kiam vi legas la variablon, vi ricevas `0`. Malsame ol kun nedeklarita defaŭlto, ne estas averto pri _nepravalorizita valoro_.

1. Post la atribuo, la ujo enhavas `15`, kaj la defaŭlta valoro ne plu estas grava.

{% include nav.html %}

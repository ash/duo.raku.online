---
title: 'Solvo: Kalkuli kaj sumigi'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
enum Coin (penny => 1, nickel => 5, dime => 10, quarter => 25);

say Coin.enums.elems;
say Coin.enums.values.sum;
```

🦋 Vi povas trovi la fontkodon en la dosiero [enum-introspection.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/enum-introspection.raku).

## Eligo

```
4
41
```

## Komentoj

1. Ni skribas la konstantojn kiel parojn. Do ni elektas la valoron de ĉiu konstanto. Raku ne numeras ilin de nulo.

1. `.enums` redonas mapon. Mapo similas al hako. En ĝi, ĉiu konstanta nomo havas sian valoron. `.elems` kalkulas la erojn. Estas kvar moneroj.

1. `.values` prenas nur la nombrojn malantaŭ la nomoj. `.sum` adicias ilin: `1 + 5 + 10 + 25` estas `41`.

{% include nav.html %}

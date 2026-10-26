---
title: 'Solvo: Kalkuli kaj sumigi'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La konstantoj estas skribitaj kiel paroj. Do ĉiu ricevas la valoron, kiun ni elektis, ne la aŭtomatajn nombrojn de nulo.

1. `.enums` redonas mapon, kie ĉiu konstanta nomo montras al sia valoro. `.elems` kalkulas la erojn, kaj estas kvar moneroj.

1. `.values` donas nur la nombrojn malantaŭ la nomoj. Poste `.sum` adicias ilin: `1 + 5 + 10 + 25` estas `41`.

{% include nav.html %}

---
title: 'Solvo: Mezumo de tabelo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my @data = 10, 20, 30, 40;

say ([+] @data) / @data.elems;
```

🦋 Vi povas trovi la fontkodon en la dosiero [sum-of-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/sum-of-array.raku).

## Eligo

```
25
```

## Komentoj

1. La redukta meta-operatoro `[+]` metas la operatoron `+` inter ĉiujn elementojn de `@data`. Do `[+] @data` estas la sama kiel `10 + 20 + 30 + 40`, kio estas `100`. La krampoj certigas, ke la redukto okazas antaŭ la divido.

1. `@data.elems` donas la nombron de elementoj. Dividi la sumon per ĝi donas la meznombron, `25`. Se la divido ne estus ekzakta, Raku ne rondigus la rezulton. Ĝi anstataŭe donus ekzaktan `Rat`.

{% include nav.html %}

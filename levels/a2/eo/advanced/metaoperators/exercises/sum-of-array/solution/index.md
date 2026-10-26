---
title: 'Solvo: Mezumo de tabelo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La redukta meta-operatoro `[+]` metas `+` inter ĉiujn elementojn de `@data`. Do `[+] @data` estas la sama kiel `10 + 20 + 30 + 40`. Tio estas `100`. La kodo bezonas la krampojn. Kun ili, la redukto okazas antaŭ la divido.

1. `@data.elems` estas la nombro de elementoj. La sumo dividita per ĝi donas la meznombron, `25`. Foje la nombroj ne dividiĝas egale. Tiam Raku ne rondigas la rezulton. Ĝi donas ekzaktan frakcion, `Rat`.

{% include nav.html %}

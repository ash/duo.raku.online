---
title: 'Solvo: Kalkuli la unikajn'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my @data = 3, 1, 4, 1, 5, 9, 2, 6, 5, 3;

say set(@data).elems;
```

🦋 Vi povas trovi la fontkodon en la dosiero [count-the-distinct.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/count-the-distinct.raku).

## Eligo

```
7
```

## Komentoj

1. Kiam vi transdonas la tabelon al `set`, vi ricevas aron de ĝiaj valoroj. Aro konservas nur distingajn valorojn, do la ripetitaj nombroj fariĝas unu.

1. Post tio, `elems` donas la nombron de distingaj valoroj: `7`.

{% include nav.html %}

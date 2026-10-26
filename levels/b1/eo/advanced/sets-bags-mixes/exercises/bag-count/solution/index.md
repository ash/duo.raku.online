---
title: 'Solvo: Kalkuli en sako'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $words = bag('the cat sat on the mat'.words);

say $words<the>;
say $words.total;
```

🦋 Vi povas trovi la fontkodon en la dosiero [bag-count.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/bag-count.raku).

## Eligo

```
2
6
```

## Komentoj

1. `'the cat sat on the mat'.words` donas la ses vortojn, kaj `bag` kalkulas ĉiun el ili. La subskribo `<the>` redonas, kiom da fojoj `the` estis vidita, kio estas dufoje.

1. La metodo `total` sumigas ĉiujn kalkulojn. Tio estas la sama kiel la nombro de vortoj metitaj en la sakon, `6`.

{% include nav.html %}

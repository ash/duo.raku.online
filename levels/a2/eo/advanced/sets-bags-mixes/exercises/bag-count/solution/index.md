---
title: 'Solvo: Kalkuli en sako'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `'the cat sat on the mat'.words` donas la ses vortojn. `bag` kalkulas ĉiun vorton. La subskribo `<the>` redonas, kiom da fojoj la sako vidis `the`. La respondo estas du.

1. La metodo `total` sumigas ĉiujn kalkulojn. Ĉi tiu sumo estas la nombro de vortoj en la sako: `6`.

{% include nav.html %}

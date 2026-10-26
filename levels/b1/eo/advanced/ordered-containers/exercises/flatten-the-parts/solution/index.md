---
title: 'Solvo: Platigi la partojn'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo de la tasko.

## Kodo

```raku
my @first = 1, 2;
my @second = 3, 4, 5;

my @all = flat(@first, @second);
say @all;
say @all.elems;
```

🦋 Vi povas trovi la fontkodon en la dosiero [flatten-the-parts.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/flatten-the-parts.raku).

## Eligo

```
[1 2 3 4 5]
5
```

## Komentoj

1. Se vi skribas `my @all = @first, @second`, vi _ne_ ricevas platan tabelon. Anstataŭe, vi ricevas nestitan tabelon el du tabeloj, `[[1 2] [3 4 5]]`.

1. La rutino `flat` kunigas la elementojn de ambaŭ tabeloj en unu platan sekvencon. Poste ĉi tiu sekvenco estas konservata en `@all`. La rezulto havas kvin elementojn.

{% include nav.html %}

---
title: 'Solvo: Platigi la partojn'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La kodo `my @all = @first, @second` _ne_ donas platan tabelon. Ĝi faras nestitan tabelon el du tabeloj: `[[1 2] [3 4 5]]`.

1. La rutino `flat` kunmetas la elementojn de ambaŭ tabeloj. Ĝi faras unu platan sekvencon. La programo konservas ĉi tiun sekvencon en `@all`. La rezulto havas kvin elementojn.

{% include nav.html %}

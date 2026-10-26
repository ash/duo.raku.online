---
title: 'Solvo: Du-argumenta Whatever'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $join = * ~ '-' ~ *;

say $join('a', 'b');
```

🦋 Vi povas trovi la fontkodon en la dosiero [two-arg-whatever.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/two-arg-whatever.raku).

## Eligo

```
a-b
```

## Komentoj

1. La esprimo havas du stelojn. Do Raku faras `WhateverCode` kun du argumentoj. La unua stelo estas la unua argumento. La dua stelo estas la dua argumento.

1. La voko `$join('a', 'b')` metas la valorojn en la stelojn laŭ ordo. Tio donas `'a' ~ '-' ~ 'b'`. La rezulto estas `a-b`.

{% include nav.html %}

---
title: 'Solvo: Du-argumenta Whatever'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La esprimo havas du stelojn, do Raku kreas `WhateverCode`, kiu prenas du argumentojn. La unua stelo estas la unua argumento, kaj la dua stelo estas la dua.

1. La voko `$join('a', 'b')` plenigas la stelojn laŭ ordo. Tio donas `'a' ~ '-' ~ 'b'`, kio estas `a-b`.

{% include nav.html %}

---
title: 'Solvo: Kiam nenio misiras'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $r = try { 21 * 2 };

say $r.defined;
say $r;
```

🦋 Vi povas trovi la fontkodon en la dosiero [try-succeeds.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-succeeds.raku).

## Eligo

```
True
42
```

## Komentoj

1. Ĉi tie, la bloko `try` ruliĝas sen escepto. Do ĝi simple donas la valoron de la bloko.

1. Do `$r` tenas `42`, kaj `$r.defined` estas `True`.

{% include nav.html %}

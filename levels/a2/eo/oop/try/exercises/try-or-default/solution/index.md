---
title: 'Solvo: Provo aŭ defaŭlta valoro'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $r = try { die 'no' } // 'default';

say $r;
```

🦋 Vi povas trovi la fontkodon en la dosiero [try-or-default.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-or-default.raku).

## Eligo

```
default
```

## Komentoj

1. La bloko `try` malsukcesas. Do ĝia valoro estas nedifinita.

1. Do la difinita-aŭ operatoro `//` redonas sian dekstran flankon. Tio estas `'default'`. Tio estas pura maniero daŭrigi post malsukceso. Vi bezonas nur unu linion kaj rezervan valoron.

{% include nav.html %}

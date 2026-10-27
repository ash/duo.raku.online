---
title: 'Solvo: Provo aŭ defaŭlta valoro'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La malsukcesanta bloko `try` donas nedifinitan valoron.

1. Do la difinita-aŭ operatoro `//` redonas sian dekstran flankon, `'default'`. Tio estas pura maniero savi la situacion per rezerva valoro en unu sola linio.

{% include nav.html %}

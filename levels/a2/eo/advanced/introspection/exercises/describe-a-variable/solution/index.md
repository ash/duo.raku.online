---
title: 'Solvo: Priskribi variablon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my Str $lang = 'Raku';

say $lang.^name;
say $lang.VAR.^name;
say $lang.VAR.name;
```

🦋 Vi povas trovi la fontkodon en la dosiero [describe-a-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/describe-a-variable.raku).

## Eligo

```
Str
Scalar
$lang
```

## Komentoj

1. `.^name` redonas la tipon de la valoro en la ujo. Ĉi tiu tipo estas `Str`.

1. `.VAR` redonas la ujon malantaŭ la variablo. `.^name` sur la ujo redonas `Scalar`. Tio estas la tipo de la ujo mem.

1. `.VAR.name` redonas la nomon de la variablo kun ĝia sigelo: `$lang`. Notu, ke tio estas la metodo `name`. Ĝi ne estas la meta-metodo `^name` el la unuaj du linioj.

{% include nav.html %}

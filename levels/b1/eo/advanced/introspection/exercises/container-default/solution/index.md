---
title: 'Solvo: La defaŭlto de la ujo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $count is default(0);

say $count;
say $count.VAR.default;
```

🦋 Vi povas trovi la fontkodon en la dosiero [container-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/container-default.raku).

## Eligo

```
0
0
```

## Komentoj

1. La trajto `is default(0)` donas al la ujo defaŭltan valoron. Nenio estas ankoraŭ atribuita, do legado de `$count` redonas ĉi tiun defaŭlton. Tial la unua linio presas `0`.

1. `.VAR.default` demandas la ujon mem pri la ricevita defaŭlto, kiu ankaŭ estas `0`. Sen la trajto, la defaŭlto de ujo sen tipo estus `(Any)`.

{% include nav.html %}

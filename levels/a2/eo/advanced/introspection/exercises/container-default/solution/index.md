---
title: 'Solvo: La defaŭlto de la ujo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La trajto `is default(0)` donas al la ujo defaŭltan valoron. La programo atribuas nenion al `$count`. Do `$count` redonas la defaŭlton. La unua linio presas `0`.

1. `.VAR.default` demandas la ujon pri ĝia defaŭlto. Ĝi ankaŭ estas `0`. Sen la trajto, la defaŭlto estas alia. Ujo sen tipo tiam havas la defaŭlton `(Any)`.

{% include nav.html %}

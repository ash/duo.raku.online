---
title: 'Solvo: Listigi la simbolojn'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

La programo, `list.raku`:

```raku
use Circle;

say Circle::.keys.elems;
say Circle::.keys.sort;
```

🦋 Vi povas trovi ambaŭ fontdosierojn en la dosierujo [exercises/advanced/module-introspection/list-the-symbols](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/list-the-symbols).

## Eligo

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Komentoj

1. `Circle::` estas la pakaĵo de la modulo. `.keys` listigas la nomojn, kiujn ĝi enhavas, ĉiun kun sia sigelo.

1. `.elems` kalkulas ĉi tiujn nomojn. La modulo difinas du `our`-variablojn, do la nombro estas `2`.

1. `.keys` ne promesas iun apartan ordon. Do ni uzas `.sort`, kiu donas la saman alfabetan rezulton ĉiufoje: `($pi $tau)`. Sen ordigo, la ordo de la du nomoj povus ŝanĝiĝi inter ruloj.

{% include nav.html %}

---
title: 'Solvo: Listigi la simbolojn'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `Circle::` estas la pakaĵo de la modulo. `.keys` listigas la nomojn en ĝi. Ĉiu nomo havas sian sigelon.

1. `.elems` kalkulas ĉi tiujn nomojn. La modulo havas du `our`-variablojn. Do la nombro estas `2`.

1. `.keys` ne donas la nomojn en fiksita ordo. Do ni uzas `.sort`. Ĝi metas la nomojn en alfabetan ordon. Nun la rezulto estas ĉiam la sama: `($pi $tau)`. Sen ordigo, la ordo de la du nomoj povas ŝanĝiĝi. Ĝi povas esti alia ĉiufoje, kiam la programo ruliĝas.

{% include nav.html %}

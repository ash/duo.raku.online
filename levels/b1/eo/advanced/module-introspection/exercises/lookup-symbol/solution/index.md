---
title: 'Solvo: Serĉi simbolon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

La programo, `lookup.raku`:

```raku
use Circle;

say Circle::{'$pi'};
```

🦋 Vi povas trovi ambaŭ fontdosierojn en la dosierujo [exercises/advanced/module-introspection/lookup-symbol](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/lookup-symbol).

## Eligo

```console
$ raku -I. lookup.raku
3.14
```

## Komentoj

1. `Circle::` estas la simboltabelo de la modulo. Se vi uzas nomon kiel ŝlosilon, kiel `Circle::{'$pi'}`, vi ricevas la valoron konservitan sub ĝi. La ŝlosilo devas enhavi la sigelon, same kiel la listigitaj nomoj.

1. Tio donas la saman valoron kiel la kvalifikita `$Circle::pi`. Sed ĉi tie la nomo estas ordinara ĉeno. Do oni povas konstrui ĝin je rultempo. Oni ne devas skribi ĝin en la fontkodo.

{% include nav.html %}

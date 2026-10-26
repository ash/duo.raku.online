---
title: 'Solvo: Serĉi simbolon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `Circle::` estas la simboltabelo de la modulo. Vi uzas nomon kiel ŝlosilon: `Circle::{'$pi'}`. Tio donas la valoron por tiu nomo. La ŝlosilo devas havi la sigelon. Ankaŭ la nomoj en la listo havas ĝin.

1. Vi ricevas la saman valoron kiel per la plena nomo `$Circle::pi`. Sed ĉi tie, la nomo estas normala ĉeno. Do la programo povas fari la nomon, dum ĝi ruliĝas. Vi ne devas skribi ĝin en la fontkodo.

{% include nav.html %}

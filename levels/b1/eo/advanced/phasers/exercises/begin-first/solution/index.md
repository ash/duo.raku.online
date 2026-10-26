---
title: 'Solvo: Komenci unue'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $compiled = BEGIN { 2 + 3 };

say $compiled;
```

🦋 Vi povas trovi la fontkodon en la dosiero [begin-first.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/begin-first.raku).

## Eligo

```
5
```

## Komentoj

1. `BEGIN { 2 + 3 }` ruliĝas dum la kompilado kaj donas `5`. Kiam vi uzas `BEGIN`-blokon kiel esprimon, ĝi redonas sian valoron. Ĉi tie, ĉi tiu valoro estas asignita al `$compiled`.

1. La kalkulo okazas nur unufoje, dum kompilotempo. Kiam la programo ruliĝas, `$compiled` simple enhavas la konstanton `5`. Tiel `BEGIN` povas kalkuli valorojn antaŭe. Ĝi ne estas nur por presi frue.

{% include nav.html %}

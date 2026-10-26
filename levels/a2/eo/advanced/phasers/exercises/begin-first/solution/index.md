---
title: 'Solvo: Komenci unue'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `BEGIN { 2 + 3 }` ruliĝas dum la kompilado. Ĝi donas `5`. Ĉi tie, la `BEGIN`-bloko estas esprimo. Do ĝi redonas sian valoron. La programo metas ĉi tiun valoron en `$compiled`.

1. La kalkulo okazas nur unufoje, dum kompilotempo. Kiam la programo ruliĝas, `$compiled` simple tenas la fiksan valoron `5`. Do vi povas uzi `BEGIN` por kalkuli valorojn frue. Ĝi ne estas nur por frua presado.

{% include nav.html %}

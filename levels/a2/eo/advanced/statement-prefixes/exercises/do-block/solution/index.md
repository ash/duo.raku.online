---
title: 'Solvo: La valoro de do-bloko'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $label = do if 7 > 5 { 'big' } else { 'small' };

say $label;
```

🦋 Vi povas trovi la fontkodon en la dosiero [do-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/do-block.raku).

## Eligo

```
big
```

## Komentoj

1. Simpla `if` estas deklaro. Ĝi ne havas valoron, kiun vi povas uzi. La prefikso `do` faras el la tuta `if`/`else` esprimon.

1. `7 > 5` estas vera. Do la valoro de la esprimo estas `'big'`. La programo atribuas ĝin al `$label`. La sama truko funkcias kun `do given` kaj `do for`.

1. Vi devas skribi la krampojn `{ }`. En Raku, `if` ĉiam bezonas blokon. Do vi ne povas mallongigi la branĉojn, ekzemple al `if 7 > 5 'big' else 'small'`. Ĉi tiu kodo ne kompiliĝas. La eraro estas *Missing block*.

{% include nav.html %}

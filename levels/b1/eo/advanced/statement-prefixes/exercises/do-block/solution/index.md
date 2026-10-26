---
title: 'Solvo: La valoro de do-bloko'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. Simpla `if` estas deklaro, kaj vi ne povas uzi ĝian valoron. La prefikso `do` transformas la tutan `if`/`else` en esprimon.

1. `7 > 5` estas vera, do la esprimo donas `'big'`, kaj ĉi tiu valoro estas atribuata al `$label`. La sama truko funkcias kun `do given` kaj `do for`.

1. La krampoj `{ }` ne estas nedevigaj. En Raku, `if` ĉiam prenas blokon. Do vi ne povas mallongigi la branĉojn al `if 7 > 5 'big' else 'small'`. Tio ne kompiliĝas, kaj la eraro estas *Missing block*.

{% include nav.html %}

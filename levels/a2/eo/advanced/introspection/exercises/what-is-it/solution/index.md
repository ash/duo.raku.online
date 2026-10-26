---
title: 'Solvo: Kio ĝi estas'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $a = 42;
my $b = 'x';

say $a.WHAT === Int;
say $b.WHAT === Int;
```

🦋 Vi povas trovi la fontkodon en la dosiero [what-is-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/what-is-it.raku).

## Eligo

```
True
False
```

## Komentoj

1. `$a.WHAT` ne estas la ĉeno `Int`. Ĝi estas la vera tip-objekto `Int`. Do `=== Int` komparas ĝin kun la tipo mem. La rezulto estas `True`.

1. `$b` tenas ĉenon. Do ĝia `WHAT` estas `Str`. La komparo kun `Int` donas `False`. Do `WHAT` estas utila en kondiĉoj. Ĝi ne estas nur por presado.

{% include nav.html %}

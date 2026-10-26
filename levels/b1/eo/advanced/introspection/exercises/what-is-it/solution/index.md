---
title: 'Solvo: Kio ĝi estas'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `$a.WHAT` ne estas la ĉeno `Int`, sed la vera tip-objekto `Int`. Do `=== Int` komparas ĝin kun la tipo mem kaj redonas `True`.

1. `$b` tenas ĉenon, do ĝia `WHAT` estas `Str`. Kiam vi komparas ĝin kun `Int`, vi ricevas `False`. Tial `WHAT` estas utila en kondiĉoj, kaj ne nur kiam vi presas ion.

{% include nav.html %}

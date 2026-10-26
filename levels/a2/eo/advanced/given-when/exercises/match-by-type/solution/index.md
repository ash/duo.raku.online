---
title: 'Solvo: Kongrui laŭ tipo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $value = 3.14;

given $value {
    when Int { say 'integer' }
    when Rat { say 'rational' }
    when Str { say 'string' }
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [match-by-type.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/match-by-type.raku).

## Eligo

```
rational
```

## Komentoj

1. Foje `when` havas tipon. Tiam la saĝa kongruado kontrolas, ĉu la temo *havas ĉi tiun tipon*. `3.14` ne estas `Int`. Do Raku preterlasas la unuan `when`.

1. En Raku, nombro kun dekuma punkto, kiel `3.14`, estas `Rat`. `Rat` estas racionala nombro, aŭ frakcio. Do la dua `when` kongruas. La programo presas `rational`.

{% include nav.html %}

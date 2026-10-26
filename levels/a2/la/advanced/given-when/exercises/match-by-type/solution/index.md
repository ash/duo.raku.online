---
title: 'Solutio: Concordare per typum'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my $value = 3.14;

given $value {
    when Int { say 'integer' }
    when Rat { say 'rational' }
    when Str { say 'string' }
}
```

🦋 Inveni codicem fontem in archivo [match-by-type.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/match-by-type.raku).

## Exitus

```
rational
```

## Commentarii

1. Interdum `when` typum habet. Tum congruatio intelligens probat num topicum *hunc typum habeat*. `3.14` non est `Int`. Itaque Raku primam `when` praeterit.

1. In Raku numerus cum puncto decimali, sicut `3.14`, est `Rat`. `Rat` est numerus rationalis, sive fractio. Itaque secunda `when` congruit. Programma `rational` imprimit.

{% include nav.html %}

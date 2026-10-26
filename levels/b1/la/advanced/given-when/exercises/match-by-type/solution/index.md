---
title: 'Solutio: Concordare per typum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Hic valor ad congruendum typus est. Tum congruatio intelligens probat num topicum *illius typi sit*. `3.14` non est `Int`, itaque prima `when` praeteritur.

1. In Raku numerus decimalis sicut `3.14` est `Rat`, numerus rationalis. Itaque secunda `when` congruit, et programma `rational` imprimit.

{% include nav.html %}

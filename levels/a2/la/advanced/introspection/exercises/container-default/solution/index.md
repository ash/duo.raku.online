---
title: 'Solutio: Praedefinitum receptaculi'
translations_gpt: Solutio exercitationis 'Praedefinitum receptaculi'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my $count is default(0);

say $count;
say $count.VAR.default;
```

🦋 Inveni codicem fontem in archivo [container-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/container-default.raku).

## Exitus

```
0
0
```

## Commentarii

1. Tropus `is default(0)` receptaculo valorem praedefinitum dat. Programma nihil variabili `$count` assignat. Itaque `$count` praedefinitum reddit. Prima linea `0` imprimit.

1. `.VAR.default` receptaculum de praedefinito eius interrogat. Hoc quoque `0` est. Sine tropo praedefinitum aliud est. Tum receptaculum sine typo praedefinitum `(Any)` habet.

{% include nav.html %}

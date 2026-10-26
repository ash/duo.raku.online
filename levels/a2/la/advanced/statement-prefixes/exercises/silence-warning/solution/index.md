---
title: 'Solutio: Admonitionem silere'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my $name;

my $greeting = quietly { "Hello, " ~ $name ~ "!" };
say $greeting;
```

🦋 Inveni codicem fontem in archivo [silence-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/silence-warning.raku).

## Exitus

```
Hello, !
```

## Commentarii

1. Hic `$name` indefinitus in chordam it. Plerumque hoc admonitionem dat: “use of uninitialized value”. Sed expressio intra `quietly` est. Itaque admonitio latet. Programma solum salutationem imprimit.

1. Sicut `do`, `quietly` valorem copiae suae reddit. Itaque programma novam chordam in `$greeting` servat. Nomen abest, itaque in chorda est lacuna vacua.

1. `quietly` solum admonitionem celat. Valor adhuc indefinitus est. Fortasse valorem absentem *tractare* vis. Tum valorem praedefinitum cum operatore definito-vel `//` da. `$name // 'friend'` dat `'friend'` cum `$name` indefinitus est. Itaque `"Hello, " ~ ($name // 'friend') ~ "!"` imprimit `Hello, friend!`. Nulla omnino admonitio est.

{% include nav.html %}

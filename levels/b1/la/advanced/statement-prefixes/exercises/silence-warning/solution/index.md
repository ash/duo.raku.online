---
title: 'Solutio: Admonitionem silere'
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Si `$name` indefinitum in chordam ponis, plerumque admonitio “use of uninitialized value” oritur. Cum `quietly` circa expressionem, admonitio celatur, itaque sola salutatio imprimitur.

1. Sicut `do`, `quietly` valorem copiae suae reddit. Itaque chorda perfecta in `$greeting` servatur. Nomen absens lacunam vacuam in ea relinquit.

1. `quietly` solum admonitionem celat, et valor adhuc indefinitus est. Si potius valorem absentem *tractare* vis, valorem praedefinitum da. Ad hoc operatore definito-vel `//` utere. `$name // 'friend'` dat `'friend'` cum `$name` indefinitus est. Itaque `"Hello, " ~ ($name // 'friend') ~ "!"` imprimit `Hello, friend!` sine ulla admonitione.

{% include nav.html %}

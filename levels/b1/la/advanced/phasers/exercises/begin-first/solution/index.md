---
title: 'Solutio: Begin primum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $compiled = BEGIN { 2 + 3 };

say $compiled;
```

🦋 Inveni codicem fontem in archivo [begin-first.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/begin-first.raku).

## Exitus

```
5
```

## Commentarii

1. `BEGIN { 2 + 3 }` dum compilatio fit currit et `5` dat. Cum copiam `BEGIN` ut expressionem adhibes, valorem suum reddit. Hoc loco hic valor ad `$compiled` assignatur.

1. Computatio semel tantum fit, tempore compilationis. Cum programma currit, `$compiled` simpliciter constantem `5` continet. Sic `BEGIN` valores ante tempus computare potest. Non solum ad mature imprimendum est.

{% include nav.html %}

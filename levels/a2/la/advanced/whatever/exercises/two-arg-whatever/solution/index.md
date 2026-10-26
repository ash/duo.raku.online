---
title: 'Solutio: Whatever duobus argumentis'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
my $join = * ~ '-' ~ *;

say $join('a', 'b');
```

🦋 Inveni codicem fontem in archivo [two-arg-whatever.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/two-arg-whatever.raku).

## Exitus

```
a-b
```

## Commentarii

1. Expressio duas stellas habet. Itaque Raku `WhateverCode` cum duobus argumentis facit. Prima stella est primum argumentum. Secunda stella est secundum argumentum.

1. Vocatio `$join('a', 'b')` valores ordine in stellas ponit. Hoc dat `'a' ~ '-' ~ 'b'`. Effectus est `a-b`.

{% include nav.html %}

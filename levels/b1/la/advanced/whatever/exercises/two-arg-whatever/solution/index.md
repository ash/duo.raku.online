---
title: 'Solutio: Whatever duobus argumentis'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Expressio duas stellas habet, itaque Raku `WhateverCode` aedificat quod duo argumenta accipit. Prima stella est primum argumentum, et secunda stella secundum.

1. Vocatio `$join('a', 'b')` stellas ordine implet. Hoc dat `'a' ~ '-' ~ 'b'`, id est `a-b`.

{% include nav.html %}

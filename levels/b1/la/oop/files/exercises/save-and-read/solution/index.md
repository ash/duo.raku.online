---
title: 'Solutio: Serva et lege'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
spurt 'number.txt', "42\n";

my $n = slurp('number.txt').trim.Int;
say $n * 2;
```

🦋 Inveni codicem fontem in archivo [save-and-read.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/save-and-read.raku).

## Exitus

```
84
```

## Commentarii

1. `spurt` archivum creat et chordam in id scribit. `slurp` totum archivum retro in chordam legit. Simul totum opus servandi et onerandi faciunt.

1. `slurp` textum reddit, `"42\n"`. Itaque antequam arithmeticam agimus, `trim` adhibemus ut novam lineam in fine removeamus. Deinde `.Int` vocamus ut textum in numerum vertamus. Effectus, `42 * 2`, est `84`.

1. Programma tamen etiam sine `.trim.Int` operatur.

{% include nav.html %}

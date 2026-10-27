---
title: 'Solutio: Serva et lege'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `spurt` archivum creat et chordam in id scribit. `slurp` totum archivum retro in chordam legit. Simul ambo opera faciunt. Data servant et iterum onerant.

1. `slurp` textum reddit: `"42\n"`. Itaque `trim` adhibemus ut novam lineam in fine removeamus. Deinde `.Int` vocamus ut textum in numerum vertamus. Nunc arithmeticam cum eo agere possumus. Effectus `42 * 2` est `84`.

1. Sed programma etiam sine `.trim.Int` operatur.

{% include nav.html %}

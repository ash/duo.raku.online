---
title: 'Solutio: Litteras numera'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
spurt 'data.txt', 'Raku';

say slurp('data.txt').chars;
```

🦋 Inveni codicem fontem in archivo [count-characters.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/count-characters.raku).

## Exitus

```
4
```

## Commentarii

1. `spurt` chordam `Raku` in archivum scribit.

1. `slurp` id retro ut chordam legit, et `.chars` characteres eius numerat. Quattuor sunt.

1. Si archivum inspicis, revera solos quattuor characteres videbis. Nullus character novae lineae additur.

{% include nav.html %}

---
title: 'Solutio: Litteras numera'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `slurp` archivum ut chordam legit. `.chars` characteres in ea numerat. Quattuor sunt.

1. Archivum inspice. Solos hos quattuor characteres vides. In fine nullus character novae lineae est.

{% include nav.html %}

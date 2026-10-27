---
title: 'Solutio: Directorium vacua'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
mkdir 'cache';
spurt 'cache/a.tmp', '1';
spurt 'cache/b.tmp', '2';

.unlink for 'cache'.IO.dir;
rmdir 'cache';

say 'cache'.IO.e;
```

🦋 Inveni codicem fontem in archivo [clear-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/clear-a-directory.raku).

## Exitus

```
False
```

## Commentarii

1. `rmdir` solum directoriam vacuam removet. Itaque programma primum archiva delet. `'cache'.IO.dir` indicem ingressuum dat. `.unlink for …` unumquemque eorum delet.

1. Nunc directoria vacua est, et `rmdir` eam removet. Ultima probatio `.e` `False` dat. Itaque `cache` vere abiit.

{% include nav.html %}

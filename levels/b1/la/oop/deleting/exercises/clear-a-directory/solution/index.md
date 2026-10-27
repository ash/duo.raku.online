---
title: 'Solutio: Directorium vacua'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `rmdir` solum directorias vacuas removet, itaque archiva primum deleri debent. `'cache'.IO.dir` ingressus enumerat, et `.unlink for …` unumquemque eorum delet.

1. Quia directoria nunc vacua est, `rmdir` eam removet. Ultima probatio `.e` `False` dat, quod ostendit `cache` non iam adesse.

{% include nav.html %}

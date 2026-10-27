---
title: 'Solutio: Plica an directorium?'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
spurt 'a.txt', 'x';

say 'a.txt'.IO.f;
say 'a.txt'.IO.d;
```

🦋 Inveni codicem fontem in archivo [file-or-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/file-or-directory.raku).

## Exitus

```
True
False
```

## Commentarii

1. `.f` probat utrum semita archivum ordinarium sit, itaque pro `a.txt` `True` reddit.

1. `.d` directoriam probat. Pro eadem ipsa semita `False` reddit. Hoc est quia `a.txt` archivum est, non directoria. Duae probationes se invicem complent. Sic archivum et directoriam discernis.

{% include nav.html %}

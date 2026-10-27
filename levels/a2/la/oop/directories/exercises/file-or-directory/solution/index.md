---
title: 'Solutio: Plica an directorium?'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `.f` archivum ordinarium probat. Itaque pro `a.txt` `True` reddit.

1. `.d` directoriam probat. Eam de eadem ipsa semita interrogamus. `False` reddit. `a.txt` archivum est, non directoria. Duae probationes ut par operantur. Ostendunt utrum semita archivum sit an directoria.

{% include nav.html %}

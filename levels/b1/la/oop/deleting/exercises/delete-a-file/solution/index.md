---
title: 'Solutio: Plicam dele'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
spurt 'note.txt', 'temporary';
say 'note.txt'.IO.e;

unlink 'note.txt';
say 'note.txt'.IO.e;
```

🦋 Inveni codicem fontem in archivo [delete-a-file.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/delete-a-file.raku).

## Exitus

```
True
False
```

## Commentarii

1. `spurt` archivum creat, itaque prima probatio `.e` `True` dat.

1. `unlink` archivum delet. Deinde secunda probatio `.e` `False` dat, quia archivum abiit. Nota: `.e` adhibemus, non `.f`. Probatio generis `.f` errorem daret pro semita quae non iam exsistit. Sed `.e` simpliciter `False` respondet.

{% include nav.html %}

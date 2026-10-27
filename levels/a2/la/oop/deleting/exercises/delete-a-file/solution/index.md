---
title: 'Solutio: Plicam dele'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `spurt` archivum creat. Itaque prima probatio `.e` `True` dat.

1. `unlink` archivum delet. Deinde secunda probatio `.e` `False` dat. Archivum non iam adest. Nota: `.e` adhibemus, non `.f`. `.f` genus semitae probat. Errorem dat si semita non iam exsistit. Sed `.e` solum `False` respondet.

{% include nav.html %}

---
title: 'Solutio: Existitne?'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
say 'test.txt'.IO.e;
spurt 'test.txt', 'x';
say 'test.txt'.IO.e;
```

🦋 Inveni codicem fontem in archivo [does-it-exist.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/does-it-exist.raku).

## Exitus

```
False
True
```

## Commentarii

1. `.e` probat an semita exsistat. Prima inspectio fit antequam archivum creamus. Itaque `False` reddit.

1. Deinde `spurt` `test.txt` creat. Secunda inspectio in *eadem* semita fit. Nunc `True` reddit. Obiectum semitae iterum interrogare potes. Responsum eius systema archivorum ostendit ut nunc est.

{% include nav.html %}

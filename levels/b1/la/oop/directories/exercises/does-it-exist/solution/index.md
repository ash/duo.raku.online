---
title: 'Solutio: Existitne?'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `.e` probat utrum semita exsistat. Prima inspectio fit antequam archivum creamus, itaque `False` reddit.

1. Deinde `spurt` `test.txt` creat, et secunda inspectio in *eadem* semita `True` reddit. Obiectum semitae iterum interroga, et statum praesentem systematis archivorum accipis.

{% include nav.html %}

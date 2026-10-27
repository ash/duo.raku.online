---
title: 'Solutio: Imprimere sine nova linea'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
$*OUT.print('a');
$*OUT.print('b');
$*OUT.say('c');
```

🦋 Inveni codicem fontem in archivo [print-without-newline.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/print-without-newline.raku).

## Exitus

```
abc
```

## Commentarii

1. `$*OUT.print` textum suum scribit, sed novam lineam non addit. Itaque `a` et `b` in eadem linea manent.

1. `$*OUT.say` `c` et deinde novam lineam scribit. Hoc lineam `abc` finit.

{% include nav.html %}

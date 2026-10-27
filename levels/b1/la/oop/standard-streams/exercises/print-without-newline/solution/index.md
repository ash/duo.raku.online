---
title: 'Solutio: Imprimere sine nova linea'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `$*OUT.print` post textum suum nullam novam lineam addit, itaque `a` et `b` in una linea manent.

1. `$*OUT.say` `c` et deinde novam lineam scribit, quod lineam `abc` finit.

{% include nav.html %}

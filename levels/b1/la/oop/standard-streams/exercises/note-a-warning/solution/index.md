---
title: 'Solutio: Monitum per `note`'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $value = -3;

note 'Warning: the value is negative' if $value < 0;
say $value.abs;
```

🦋 Inveni codicem fontem in archivo [note-a-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/note-a-warning.raku).

## Exitus

```
Warning: the value is negative
3
```

## Commentarii

1. `note` monitum ad errorem vulgarem mittit, sed solum si valor vere negativus est. `say` verum effectum, valorem absolutum `3`, ad exitum vulgarem mittit.

1. Monitum in errore vulgari manet. Itaque cum vero exitu programmatis non miscetur. Si errorem vulgarem per `2>/dev/null` abicis, solum `3` manet.

{% include nav.html %}

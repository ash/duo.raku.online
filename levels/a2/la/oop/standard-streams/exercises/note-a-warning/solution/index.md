---
title: 'Solutio: Monitum per `note`'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `note` monitum ad errorem vulgarem mittit. Hoc solum facit cum valor vere negativus est. `say` verum effectum ad exitum vulgarem mittit. Effectus est valor absolutus, `3`.

1. Monitum ad errorem vulgarem it. Itaque in verum exitum programmatis non intrat. `2>/dev/null` errorem vulgarem abicit. Tum solum `3` manet.

{% include nav.html %}

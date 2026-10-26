---
title: 'Solutio: Magnitudinem classificare'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
multi sub size(Int $n where $n.abs < 10)  { 'small' }
multi sub size(Int $n where $n.abs < 100) { 'medium' }
multi sub size(Int $n)                    { 'large' }

say size(7);
say size(30);
say size(-250);
```

🦋 Inveni codicem fontem in archivo [classify-sign.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/classify-sign.raku).

## Exitus

```
small
medium
large
```

## Commentarii

1. Omnes tres candidati unum `Int` accipiunt, itaque sine clausulis `where` confligerent. Condiciones in primis duobus eos diversos faciunt. Tertius omnia cetera capit.

1. Clausulae `where` `$n.abs` probant. Itaque sola magnitudo numeri exitum decernit, et signum neglegitur. `size(7)` primo candidato congruit (`small`). In `size(-250)` valor absolutus est `250`. Neutri condicioni satisfacit et ad candidatum transit qui omnia cetera capit (`large`).

1. Candidati a specificissimo ad generalissimum probantur. Hic hoc est prorsus ordo quo scripti sunt.

{% include nav.html %}

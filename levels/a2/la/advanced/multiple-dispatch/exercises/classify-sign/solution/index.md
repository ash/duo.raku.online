---
title: 'Solutio: Magnitudinem classificare'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. Omnes tres candidati unum `Int` accipiunt. Sine clausulis `where` confligunt. Raku inter eos eligere non potest. Condiciones in primis duobus eos diversos faciunt. Tertius candidatus omnes alios numeros accipit.

1. Clausulae `where` `$n.abs` probant. Itaque solum magnitudo numeri refert, non signum eius. `size(7)` primo candidato congruit et `small` dat. In `size(-250)` valor absolutus est `250`. Neutri condicioni satisfacit. Itaque ad ultimum candidatum it, qui omnia cetera accipit. Exitus est `large`.

1. Raku candidatos a specificissimo ad generalissimum probat. Hic hoc est prorsus ordo eorum in codice.

{% include nav.html %}

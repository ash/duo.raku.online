---
title: 'Solutio: Hash dump'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis huius operis.

## Codex

```raku
my %h = beta => 2, alpha => 1;
dd %h;
```

🦋 Inveni codicem fontem in archivo [dump-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-a-hash.raku).

## Exitus

```
{:alpha(1), :beta(2)}
```

## Commentarii

1. `dd` hash in forma codici simili imprimit. Quodque par ut `:key(value)` ostenditur.

1. Claves ordine alphabetico imprimuntur, itaque `alpha` ante `beta` venit. Hoc accidit etsi `beta` primum scriptum est.

{% include nav.html %}

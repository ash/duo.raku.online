---
title: 'Solutio: Hash dump'
translations_gpt:
---

{% include menu.html %}

Hoc modo opus solvere potes.

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

1. `dd` hash in forma codici simili imprimit. Quodque par ut `:key(value)` apparet.

1. Claves ordine alphabetico exeunt. Itaque `alpha` ante `beta` venit. Sed in codice `beta` prima est.

{% include nav.html %}

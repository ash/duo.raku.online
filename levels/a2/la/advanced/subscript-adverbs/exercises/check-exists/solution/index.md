---
title: 'Solutio: Num clavis exsistat'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my %h = a => 1, b => 2;
say %h<z>:exists;
```

🦋 Inveni codicem fontem in archivo [check-exists.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/check-exists.raku).

## Exitus

```
False
```

## Commentarii

1. Adverbium `:exists` tibi dicit an clavis adsit. Valorem non obtinet.

1. Nulla clavis `z` in tabula est. Itaque eventus est `False`. Quaestio vulgaris clavem ut effectum lateralem creare potest. `:exists` hoc non facit.

{% include nav.html %}

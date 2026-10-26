---
title: 'Solutio: Num clavis exsistat'
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Adverbium `:exists` tibi dicit num clavis adsit. Valorem non obtinet.

1. Nulla clavis `z` in tabula est, itaque eventus est `False`. Quaestio ordinaria clavem ut effectum lateralem creare potest, sed `:exists` non creat.

{% include nav.html %}

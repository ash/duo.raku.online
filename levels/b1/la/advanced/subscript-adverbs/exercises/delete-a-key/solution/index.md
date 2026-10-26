---
title: 'Solutio: Clavem delere'
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my %h = a => 1, b => 2, c => 3;
%h<b>:delete;
say %h.elems;
```

🦋 Inveni codicem fontem in archivo [delete-a-key.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/delete-a-key.raku).

## Exitus

```
2
```

## Commentarii

1. Adverbium `:delete` introitum e tabula removet. Etiam valorem reddit, sed hic eum neglegimus.

1. Tabula initio tres introitus habebat, et nunc `2` habet. Hoc ostendit unum remotum esse. Per `.elems` numeramus, quod ex ordine clavium non pendet. Itaque exitus semper idem est.

{% include nav.html %}

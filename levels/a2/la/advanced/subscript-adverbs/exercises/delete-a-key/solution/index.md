---
title: 'Solutio: Clavem delere'
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. Adverbium `:delete` introitum e tabula removet. Etiam valorem reddit, sed hic eo non utimur.

1. Primo tabula tres introitus habebat. Nunc `2` habet. Itaque unus introitus abest. Introitus per `.elems` numeramus. Ordo clavium ad hoc nihil refert. Itaque exitus semper idem est.

{% include nav.html %}

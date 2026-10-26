---
title: 'Solutio: Partes complanare'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis huius operis.

## Codex

```raku
my @first = 1, 2;
my @second = 3, 4, 5;

my @all = flat(@first, @second);
say @all;
say @all.elems;
```

🦋 Inveni codicem fontem in archivo [flatten-the-parts.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/flatten-the-parts.raku).

## Exitus

```
[1 2 3 4 5]
5
```

## Commentarii

1. Si `my @all = @first, @second` scribis, ordinem planum _non_ accipis. Potius ordinem insertum duorum ordinum accipis, `[[1 2] [3 4 5]]`.

1. Subroutina `flat` elementa amborum ordinum in unam seriem planam iungit. Haec series deinde in `@all` servatur. Resultatum quinque elementa habet.

{% include nav.html %}

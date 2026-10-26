---
title: 'Solutio: Elementum vel lista'
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my @a = 1, 2, 3;
my $count = 0;

my $x = $(@a);
$count++ for @($x);
say $count;
```

🦋 Inveni codicem fontem in archivo [item-or-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/item-or-list.raku).

## Exitus

```
3
```

## Commentarii

1. `my $x = $(@a)` contextum item ponit. Itaque totus ordo in unum scalarem `$x` componitur. Non expanditur.

1. Deinde `@($x)` contextum listae ponit et `$x` iterum in tria elementa sua expandit. Itaque ansa `for` ter currit, et numerator in fine `3` est. Duo contextualisers prorsus contrarii sunt: `$( )` listam in unum item componit, et `@( )` eam iterum expandit.

{% include nav.html %}

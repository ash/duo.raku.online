---
title: 'Solutio: Elementum vel lista'
---

{% include menu.html %}

Hoc modo exercitium solvere potes.

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

1. `my $x = $(@a)` contextum item ponit. Itaque totus ordo in unum scalarem `$x` it. Ordo in elementa sua non se dividit.

1. Deinde `@($x)` contextum listae ponit. Nunc `$x` iterum tria elementa fit. Itaque ansa `for` ter currit. In fine numerator est `3`. Duo contextualisers res contrarias faciunt. `$( )` listam in unum item componit. `@( )` eam iterum expandit.

{% include nav.html %}

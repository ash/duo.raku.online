---
title: 'Solutio: Colligere usque ad plenum'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
my $sum = 0;
my @result = gather for 1..100 {
    $sum += $_;
    last if $sum > 10;
    take $_;
}

say @result;
```

🦋 Inveni codicem fontem in archivo [gather-big.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/gather-big.raku).

## Exitus

```
[1 2 3 4]
```

## Commentarii

1. Ansa seriem centum numerorum accipit. Multo pauciores requirit. Sed hoc bene est. Ansa per se desinit. Cum `$sum` maior quam `10` fit, `last` ansam relinquit. Programma ceteros numeros numquam spectat.

1. Ordo in copia magni momenti est. Primum numerum ad `$sum` addimus. Deinde limitem probamus. Postea numerum capimus. Unus numerus summam maiorem quam `10` facit. Hic ille numerus est `5`. Codex eum non capit. Post `4` summa est exacte `10`. Itaque index est `1, 2, 3, 4`.

1. Cum `for`, `gather`/`take` mature desinere potest. `grep` hoc facere non potest. `grep` semper totum indicem spectat. Hic nos tempus finis eligimus.

{% include nav.html %}

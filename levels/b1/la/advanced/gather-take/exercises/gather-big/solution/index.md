---
title: 'Solutio: Colligere usque ad plenum'
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Ansa seriem centum numerorum accipit, multo plures quam adhibebit. Hoc bene est, quia ansa per se desinit. Simulac `$sum` `10` superat, `last` ansam relinquit. Ceteri numeri numquam spectantur.

1. Ordo intra copiam refert. Primum ad `$sum` addimus et limitem probamus antequam numerum capimus. Itaque numerus qui summam supra `10` pellit (hic, `5`) non colligitur. Summa exacte `10` post `4` attingit, itaque index est `1, 2, 3, 4`.

1. Cum `for`, `gather`/`take` mature exire potest, sed `grep` non potest. `grep` semper per totum indicem it, dum hic nos eligimus quando desinamus.

{% include nav.html %}

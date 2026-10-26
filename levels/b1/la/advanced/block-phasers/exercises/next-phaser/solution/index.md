---
title: 'Solutio: Post quemque gradum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $sum = 0;

for 1..3 {
    NEXT say "sum so far: $sum";
    $sum += $_;
}
```

🦋 Inveni codicem fontem in archivo [next-phaser.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/next-phaser.raku).

## Exitus

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Commentarii

1. Phaser `NEXT` primus scriptus est, sed in *fine* cuiusque transitus currit. Tum corpus iam numerum currentem ad `$sum` addidit.

1. Itaque post primum transitum `$sum` est `1`. Post secundum est `3`, et post tertium est `6`. In ansa, `NEXT` sinit te aliquid inter transitus currere. Differt a `FIRST`, qui semel in principio currit. Differt etiam a `LAST`, qui semel in fine currit.

{% include nav.html %}

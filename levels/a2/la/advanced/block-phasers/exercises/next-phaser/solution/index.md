---
title: 'Solutio: Post quemque gradum'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. Phaser `NEXT` primus in codice venit. Sed in *fine* cuiusque gyri currit. Tum corpus numerum currentem iam ad `$sum` addidit.

1. Itaque post primum gyrum `$sum` est `1`. Post secundum gyrum est `3`. Post tertium gyrum est `6`. Cum `NEXT` ansa codicem inter gyros suos currere potest. `FIRST` aliter operatur: semel in principio currit. `LAST` quoque aliter operatur: semel in fine currit.

{% include nav.html %}

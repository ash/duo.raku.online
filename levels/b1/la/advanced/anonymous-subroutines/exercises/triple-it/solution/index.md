---
title: 'Solutio: Triplicare'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $factor = 3;
my $scale = -> $x { $x * $factor };

say $scale(7);
```

🦋 Inveni codicem fontem in archivo [triple-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/triple-it.raku).

## Exitus

```
21
```

## Commentarii

1. Cuspis acuta unum tantum parametrum habet, `$x`. Tamen `$factor` adhibet, variabilem ex ambitu circa eam. Tales variabiles capere est quod eam clausuram facit.

1. Cum `$factor` est `3`, vocatio `$scale(7)` dat `21`. Si `$factor` mutas, eadem cuspis per novum valorem multiplicat:

```raku
$factor = 5;
say $scale(7); # 35
```

Clausura ipsam *variabilem* capit. Non capit valorem quem variabilis habebat cum cuspis scripta est. Itaque vocatio posterior novum `$factor` videt et `35` reddit.

{% include nav.html %}

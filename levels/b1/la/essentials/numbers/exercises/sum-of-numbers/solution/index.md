---
title: 'Solutio: Summa numerorum'
---

{% include menu.html %}

Hic est solutio problematis.

## Codex

```raku
my $a = prompt 'Intra numerum A: ';
my $b = prompt 'Intra numerum B: ';
my $c = prompt 'Intra numerum C: ';

my $sum = $a + $b + $c;

say "Summa numerorum est $sum.";
```

🦋 Codicem completum invenire potes in archivo [sum-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum-of-numbers.raku).

## Exitus

Programma aliquoties curre. Confirma id cum diversis generibus numerorum operari.

```console
$ raku exercises/numbers/sum-of-numbers.raku
Intra numerum A: 1.2
Intra numerum B: -3.4
Intra numerum C: 45
Summa numerorum est 42.8.
```

## Commentarii

Nota: valorem a functione `prompt` redditum directe adhibemus. Hoc problemata facere potest, si usor chordam inserit quae numerus non est. Programma postea emendare possumus, cum de exceptionibus didicerimus.

{% include nav.html %}

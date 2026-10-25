---
title: 'Solutio: Summa numerorum'
---

{% include menu.html %}

Hic est solutio.

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

Programma aliquoties curre. Proba an cum diversis generibus numerorum operetur.

```console
$ raku exercises/numbers/sum-of-numbers.raku
Intra numerum A: 1.2
Intra numerum B: -3.4
Intra numerum C: 45
Summa numerorum est 42.8.
```

## Commentarii

Nota: valorem ex functione `prompt` directe adhibemus. Sed usor chordam inserere potest quae numerus non est. Tum programma problemata habere potest. Postea de exceptionibus discimus. Deinde programma melius facere possumus.

{% include nav.html %}

---
title: 'Solutio: Si numerus intra limites est'
---

{% include menu.html %}

Programma intervallum creat ex numeris quos usor inserit. Deinde probatio smartmatch examinat an tertius numerus intra fines intervalli sit. Haec probatio valorem Booleanum dat, itaque eum statim imprimere possumus.

## Codex

Hic est solutio:

```raku
my $begin = prompt 'A (incluso): ';
my $end = prompt 'Ad (excluso): ';

my $n = prompt 'Quis est numerus? ';

say $n ~~ $begin ..^ $end;
```

🦋 Inveni codicem fontem in archivo [number-in-limits.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/ranges/number-in-limits.raku).

## Exitus

Varios casus tenta, etiam casum ubi numerus fini intervalli aequalis est.

```console
$ raku exercises/ranges/number-in-limits.raku
A (incluso): 1
Ad (excluso): 2
Quis est numerus? 1.5
Verum

$ raku exercises/ranges/number-in-limits.raku
A (incluso): 100
Ad (excluso): 200
Quis est numerus? 100
Verum

$ raku exercises/ranges/number-in-limits.raku
A (incluso): -5
Ad (excluso): -2
Quis est numerus? -2
Falsum
```

## Commentarium

Nota quomodo intervallum finem suum dextrum omittat: `$begin ..^ $end`.

{% include nav.html %}

---
title: 'Solutio: Indices impares'
---

{% include menu.html %}

Hanc quaestionem cum `loop` solvere potes. Singulis vicibus 2 ad variabilem ansae adde. Sed etiam ansa `for` uti potes. Ab 1 ad dimidium longitudinis array it. Deinde quemque numerum per duo multiplicas.

## Codex

Hic est solutio:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21;

say @data[2 * $_ - 1] for 1 .. @data/2;
```

🦋 Inveni codicem fontem in archivo [odd-indices.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/odd-indices.raku).

## Exitus

Primum, curre programma cum datis originalibus.

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
```

Deinde, addite unum item plus ad data:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21, 22;
```

Novum elementum indicem imparem habet. Proba id in output esse:

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
22
```

## Commentarii

Haec quaestio in proxima parte cursus redit. Ibi eam modo valde diverso solvimus.

{% include nav.html %}

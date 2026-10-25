---
title: 'Solutio: Indices impares'
---

{% include menu.html %}

Hanc quaestionem constructo `loop` solvere potes. Tum in quaque iteratione 2 ad variabilem ansae addis. Sed etiam ansa `for` uti potes. Per numeros ab 1 ad dimidium longitudinis array it. Deinde quemque numerum per duo multiplicas.

## Codex

Hic est solutio:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21;

say @data[2 * $_ - 1] for 1 .. @data/2;
```

🦋 Inveni codicem fontem in archivo [odd-indices.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/odd-indices.raku).

## Exitus

Primum, currite programmatum cum elementis originalibus datae.

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

Proba novum elementum cum indice impari in output apparere:

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
22
```

## Commentarii

Ad hanc quaestionem in proxima parte cursus redibimus. Tum eam modo omnino diverso solvemus.

{% include nav.html %}

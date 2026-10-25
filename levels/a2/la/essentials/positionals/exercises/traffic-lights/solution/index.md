---
title: 'Solutio: Luminum trafficum'
---

{% include menu.html %}

Haec est idea solutionis. Array quattuor status luminis traffici continet. Huius array ‘indicem iteramus’:

```raku
my @lights = <flavum rubrum flavum viride>;
```

Primum secunda ab initio numera. Hunc numerum directe ut indicem in array adhibe. Postea numerus maior quam 3 fit. Tum ad initium array redis. Operator modulo `%` hoc facit. Longitudo array est `@lights.elems`. Sed hic methodum `elems` vocare non necesse est. Array est operandum operatoris `%`. Itaque Raku nomen array in numerum convertit. Haec conversio numerum elementorum dat.

## Codex

Hic est solutio:

```raku
my @lights = <flavum rubrum flavum viride>;

say @lights[51 % @lights];
say @lights[102 % @lights];
say @lights[305 % @lights];
```

🦋 Inveni codicem fontem in archivo [traffic-lights.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/traffic-lights.raku).

## Exitus

Curre programma. Deinde alios valores quoque in programmate tempta.

```console
$ raku exercises/positionals/traffic-lights.raku
viride
flavum
rubrum
```

{% include nav.html %}

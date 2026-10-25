---
title: 'Solutio: Luminum trafficum'
---

{% include menu.html %}

Idea solutionis est ‘indicem iterare’ in array. Array quattuor status luminis traffici continet:

```raku
my @lights = <flavum rubrum flavum viride>;
```

Primum numerus secundorum ab initio directe ut index adhibetur. Cum maior quam 3 est, ad initium array redis. Operator modulo `%` hoc facit. Longitudo array est `@lights.elems`. Sed cum operatore `%` methodum `elems` vocare non necesse est. Array est operandum operatoris `%`, itaque nomen eius in numerum convertitur. Haec conversio ita facta est ut numerum elementorum reddat.

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

Curre programma. Alios quoque valores in programmate tempta.

```console
$ raku exercises/positionals/traffic-lights.raku
viride
flavum
rubrum
```

{% include nav.html %}

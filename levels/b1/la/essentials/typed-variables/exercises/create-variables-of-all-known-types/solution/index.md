---
title: 'Solutio: Creare variabiles omnium notorum generum'
---

{% include menu.html %}

Hoc genus programmatis in praxi fortasse non scribes. Sed magni momenti est scire intra partes verorum programmatum spectare.

## Codex

Hic est solutio possibilis. Variabiles quinque generum quae memoravimus creat et genera earum imprimit.

```raku
my $a = 10;
my $b = 10.2;
my $c = 10e3;
my $d = True;
my $e = 'ten';

say $a, ' ', $a.WHAT;
say $b, ' ', $b.WHAT;
say $c, ' ', $c.WHAT;
say $d, ' ', $d.WHAT;
say $e, ' ', $e.WHAT;
```

🦋 Inveni codicem fontem in archivo [types.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/types.raku).

## Exitus

Hoc programma sequens output imprimit:

```console
$ raku exercises/data-types/types.raku
10 (Int)
10.2 (Rat)
10000 (Num)
True (Bool)
ten (Str)
```

{% include nav.html %}

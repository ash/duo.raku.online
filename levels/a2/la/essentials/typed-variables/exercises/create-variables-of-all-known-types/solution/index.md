---
title: 'Solutio: Creare variabiles omnium notorum generum'
---

{% include menu.html %}

Talia programmata in vero opere fortasse non scribis. Sed scire debes intra vera programmata spectare.

## Codex

Hic est solutio possibilis. Variabiles quinque generum supra creat. Deinde genera earum imprimit.

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

Programma hoc imprimit:

```console
$ raku exercises/data-types/types.raku
10 (Int)
10.2 (Rat)
10000 (Num)
True (Bool)
ten (Str)
```

{% include nav.html %}

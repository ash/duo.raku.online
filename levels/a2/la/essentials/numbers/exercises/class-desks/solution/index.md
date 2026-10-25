---
title: 'Solutio: Classis scrinia'
---

{% include menu.html %}

Hic est solutio.

## Codex

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 Codicem plenum invenire potes in archivo [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku).

## Exitus

Programma bis vel saepius curre. Numerum discipulorum imparem et numerum parem tenta. Exempli gratia, `23` et `24` tenta. Pro utroque numero programma eundem eventum imprimit:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Commentarii

Numerum discipulorum per duo modo dividere non potes. Programma cum numeris et paribus et imparibus operari debet. Sic numerum sursum rotundare potes: `$students div 2 + $students % 2`. Expressio duas partes habet. Si numerus discipulorum par est, secunda pars nulla est. Tum eventus est dimidium numeri discipulorum. Sed si impar est, prima pars adhuc numerus integer est. Nam `div` utimur, non `/`. Et secunda pars unam mensam addit.

{% include nav.html %}

---
title: 'Solutio: Classis scrinia'
---

{% include menu.html %}

Solutionem infra videre potes.

## Codex

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 Codicem plenum invenire potes in archivo [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku).

## Exitus

Programma saltem bis curre. Tenta et numerum imparem et numerum parem discipulorum. Exempli gratia, pro numeris input `23` et `24`, programma eundem eventum imprimit:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Commentarii

Non satis est numerum discipulorum solum per duo dividere. Programma et numeros pares et impares tractare debet. Hic est unus modus possibilis ad numerum sursum rotundandum: `$students div 2 + $students % 2`. Cum numerus discipulorum par est, secunda pars nulla est. Tum eventus est dimidium numeri discipulorum. Cum numerus impar est, prima pars adhuc numerus integer est. Hoc fit quia `div` pro `/` utimur. Et secunda pars expressionis unam mensam praeterea addit.

{% include nav.html %}

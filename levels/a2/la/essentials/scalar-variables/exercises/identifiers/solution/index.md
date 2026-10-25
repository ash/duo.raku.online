---
title: 'Solutio: Corrigere identifiers'
---

{% include menu.html %}

Identificatores pluribus modis corrigere potes. Ecce aliqui modi:

## Codex

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Omnes hi identificatores recti sunt. Sed nomina cum apostrophis non sunt bonum consilium. Ea vita, si `$non` habes causam gravem.

🦋 Codicem fontem invenire potes in archivo [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Exitus

Hoc programma nihil imprimit. Rakudo id compilat et exsequitur. Errores videre non debes:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Commentarii

Ecce problemata nominum in munere:

1. Nomen spatia habere non potest: `$ A G E`.
1. Variabilis sigillum requirit: `Name`. Raku quidem variabiles sine sigillo habet. Sed etiam pro eis `my Name` scribere non potes.
1. Nomen ab apostropho incipere non potest: `$'Middle'Name`. Re vera hic est apex singulus.
1. Nomen etiam a digito incipere non potest: `$2address`.
1. Nomen duo hyphena iuxta se habere non potest: `$from--to`.

{% include nav.html %}

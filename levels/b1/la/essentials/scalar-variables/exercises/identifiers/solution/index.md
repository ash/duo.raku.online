---
title: 'Solutio: Corrigere identifiers'
---

{% include menu.html %}

Plures modi sunt ad identificatores corrigendos. Hic sunt aliqui ex eis:

## Codex

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Omnes identificatores validi sunt. Sed melius est apostrophos in nominibus vitare, si `$non` habes causas graves.

🦋 Codicem fontem invenire potes in archivo [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Exitus

Hoc programma nihil imprimit. Sed cum Rakudo id compilat et exsequitur, errores accipere non debes:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Commentarii

Videamus quae vitia nomina originalia habebant:

1. Spatia in nominibus non permittuntur: `$ A G E`.
1. Variabilis sigillum requirit: `Name`. Raku variabiles sine sigillo habere potest, sed etiam eae declarari non possunt ut `my Name`.
1. Nomen ab apostropho incipere non potest, vel potius ab apice singulo: `$'Middle'Name`.
1. Nomen etiam a digito incipere non potest: `$2address`.
1. Duo hyphena alterum post alterum stare non possunt: `$from--to`.

{% include nav.html %}

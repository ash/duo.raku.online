---
title: 'Solvo: Korekti la identigilojn'
---

{% include menu.html %}

Estas pluraj manieroj korekti la identigilojn. Jen kelkaj el ili:

## Kodo

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Ĉiuj identigiloj estas validaj. Sed estas pli bone eviti apostrofojn en nomoj, se vi `$don't` havas fortajn kialojn.

🦋 Vi povas trovi la fontkodon en la dosiero [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Eligo

Ĉi tiu programo presas nenion. Sed kiam Rakudo kompilas kaj rulas ĝin, vi ne devus ricevi erarojn:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Komentoj

Ni rigardu, kio estis malĝusta en la originalaj nomoj:

1. Spacoj ne estas permesitaj en nomoj: `$ A G E`.
1. Variablo bezonas sigilon: `Name`. Raku povas havi variablojn sen sigilo, sed eĉ ili ne povas esti deklaritaj kiel `my Name`.
1. Nomo ne povas komenciĝi per apostrofo, aŭ, por esti preciza, per unuopa citilo: `$'Middle'Name`.
1. Nomo ankaŭ ne povas komenciĝi per cifero: `$2address`.
1. Du streketoj ne povas veni unu post la alia: `$from--to`.

{% include nav.html %}

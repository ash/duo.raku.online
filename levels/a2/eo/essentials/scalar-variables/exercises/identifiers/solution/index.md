---
title: 'Solvo: Korekti la identigilojn'
---

{% include menu.html %}

Vi povas korekti la identigilojn en pli ol unu maniero. Jen kelkaj manieroj:

## Kodo

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Ĉiuj ĉi tiuj identigiloj estas ĝustaj. Sed nomoj kun apostrofoj ne estas bona ideo. Evitu ilin, se vi `$don't` havas fortan kialon.

🦋 Vi povas trovi la fontkodon en la dosiero [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Eligo

Ĉi tiu programo presas nenion. Rakudo kompilas kaj rulas ĝin. Vi ne devus vidi erarojn:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Komentoj

Jen la problemoj kun la nomoj en la tasko:

1. Nomo ne povas havi spacojn: `$ A G E`.
1. Variablo bezonas sigilon: `Name`. Raku ja havas variablojn sen sigilo. Sed eĉ por ili, vi ne povas skribi `my Name`.
1. Nomo ne povas komenciĝi per apostrofo: `$'Middle'Name`. Fakte, ĉi tie ĝi estas unuopa citilo.
1. Nomo ankaŭ ne povas komenciĝi per cifero: `$2address`.
1. Nomo ne povas havi du streketojn unu apud la alia: `$from--to`.

{% include nav.html %}

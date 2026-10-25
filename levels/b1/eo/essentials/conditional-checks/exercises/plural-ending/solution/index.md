---
title: 'Solvo: Pluralfinaĵo'
---

{% include menu.html %}

La programo devus kontroli, ĉu la nombro estas pli granda ol unu. Se jes, la vorto devas esti en la plurala formo.

## Kodo

```raku
my $n = prompt 'Kiom da dosieroj kopii? ';
my $ending = $n == 1 ?? '' !! 'j';
say "$n dosiero{$ending} kopiita.";
```

🦋 Trovu la programon en la dosiero [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Eligo

Rulu la programon du aŭ pli da fojoj. Provu la enigon `1` kaj ankaŭ iun alian pozitivan tutan nombron:

```console
$ raku exercises/conditional-checks/plural-ending.raku
Kiom da dosieroj kopii? 10
10 dosieroj kopiitaj.

$ raku exercises/conditional-checks/plural-ending.raku
Kiom da dosieroj kopii? 1
1 dosiero kopiita.
```

## Komento

Vi eble ofte erare tajpas unu `?` anstataŭ la duoblan `??`. Vi eble ankaŭ tajpas dupunkton `:` anstataŭ `!!`, aŭ faras ambaŭ erarojn.

{% include nav.html %}
